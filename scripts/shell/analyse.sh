#!/bin/bash
# Static analysis script for Flutter project
# Runs flutter analyze to catch code issues

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo ""
echo -e "${YELLOW}🔍 Running static analysis...${NC}"

flutter analyze --no-pub > /tmp/flutter_analyze.log 2>&1
ANALYZE_EXIT=$?

if [ $ANALYZE_EXIT -ne 0 ]; then
    echo ""
    echo -e "${RED}❌ Static analysis failed${NC}"
    echo ""
    echo -e "${RED}🚨 Errors found:${NC}"
    cat /tmp/flutter_analyze.log
    rm /tmp/flutter_analyze.log
    exit 1
else
    echo ""
    echo -e "${GREEN}✅ Static analysis passed${NC}"
    rm /tmp/flutter_analyze.log
    exit 0
fi

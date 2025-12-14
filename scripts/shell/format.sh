#!/bin/bash
# Code formatting check script for Flutter project
# Checks if code needs formatting without modifying files

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo ""
echo -e "${YELLOW}📝 Checking code formatting...${NC}"

dart format . --set-exit-if-changed --output=none
FORMAT_EXIT=$?

if [ $FORMAT_EXIT -ne 0 ]; then
    echo -e "${RED}❌ Formatting issues found${NC}"
    echo ""
    echo -e "${RED}💡 Please run 'dart format .' to fix formatting issues${NC}"
    exit 1
else
    echo ""
    echo -e "${GREEN}✅ Code formatting check passed${NC}"
    exit 0
fi

#!/bin/bash
# 116 Mobile Development Setup Script
# Configures git hooks for code quality and branch protection

RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}🚀 Starting 116 Mobile development environment setup...${NC}"

# Setup git hooks
echo ""
echo -e "${BLUE}🔧 Setting up git hooks...${NC}"
GIT_HOOKS_DIR=$(git rev-parse --git-path hooks)

if [ ! -d "$GIT_HOOKS_DIR" ]; then
    GIT_HOOKS_DIR=".git/hooks/"
    echo ""
    echo -e "${YELLOW}📁 Git hooks directory not found, creating: $GIT_HOOKS_DIR${NC}"
    mkdir -p $GIT_HOOKS_DIR
fi

echo ""
echo -e "${BLUE}📋 Copying pre-commit and pre-push hooks...${NC}"
cp .git_hooks/pre-commit "$GIT_HOOKS_DIR"/pre-commit
cp .git_hooks/pre-push "$GIT_HOOKS_DIR"/pre-push

# Make hooks executable
echo ""
echo -e "${BLUE}🔐 Making hooks executable...${NC}"
chmod +x "$GIT_HOOKS_DIR/pre-commit" "$GIT_HOOKS_DIR/pre-push"

echo ""
echo -e "${GREEN}✅ Git hooks configured successfully!${NC}"
echo ""
echo -e "${GREEN}🎉 Setup complete! Your development environment is ready${NC}"
echo ""
echo -e "${BLUE}📋 What was configured:${NC}"
echo -e "${YELLOW}  • Pre-commit hook runs flutter analyze and dart format checks${NC}"
echo -e "${YELLOW}  • Pre-push hook enforces branch naming and protection rules${NC}"
echo ""
echo -e "${BLUE}💡 Next steps:${NC}"
echo -e "${YELLOW}  • Make your changes and commit them${NC}"
echo -e "${YELLOW}  • The pre-commit hook will automatically run flutter analyze and check formatting${NC}"
echo -e "${YELLOW}  • The pre-push hook will validate your branch name and prevent pushes to protected branches${NC}"

#!/bin/bash
# LSKv4.1 Project Validation Script
# Validates project structure, pattern usage, and quality metrics

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Counters
CHECKS_PASSED=0
CHECKS_FAILED=0
WARNINGS=0

# Helper functions
pass() {
    echo -e "${GREEN}✅ $1${NC}"
    ((CHECKS_PASSED++))
}

fail() {
    echo -e "${RED}❌ $1${NC}"
    ((CHECKS_FAILED++))
}

warn() {
    echo -e "${YELLOW}⚠️  $1${NC}"
    ((WARNINGS++))
}

info() {
    echo -e "${BLUE}ℹ️  $1${NC}"
}

section() {
    echo ""
    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e "${BLUE}$1${NC}"
    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
}

# Find project root (where .lsk/ folder is)
find_project_root() {
    local current_dir="$PWD"
    while [ "$current_dir" != "/" ]; do
        if [ -d "$current_dir/.lsk" ]; then
            echo "$current_dir"
            return 0
        fi
        current_dir=$(dirname "$current_dir")
    done
    return 1
}

PROJECT_ROOT=$(find_project_root)

if [ -z "$PROJECT_ROOT" ]; then
    echo -e "${RED}❌ Error: Not in an LSK project (no .lsk/ folder found)${NC}"
    echo "To initialize LSK in this project:"
    echo "  mkdir -p .lsk/{context-packs,checkpoints,phase-plans,risks}"
    exit 1
fi

cd "$PROJECT_ROOT"

echo ""
echo "╔═══════════════════════════════════════════════════════════════╗"
echo "║                  LSKv4.1 Project Validation                   ║"
echo "╚═══════════════════════════════════════════════════════════════╝"
echo ""
info "Project root: $PROJECT_ROOT"
echo ""

# ============================================================================
# 1. LSK Structure Validation
# ============================================================================
section "📁 LSK Project Structure"

if [ -d ".lsk" ]; then
    pass "Found .lsk/ directory"
else
    fail "Missing .lsk/ directory"
fi

# Check for required subdirectories
for dir in context-packs checkpoints phase-plans; do
    if [ -d ".lsk/$dir" ]; then
        pass "Found .lsk/$dir/"
    else
        warn "Missing .lsk/$dir/ directory"
        mkdir -p ".lsk/$dir"
        info "Created .lsk/$dir/"
    fi
done

# Check for optional directories
for dir in risks lessons-learned pocs; do
    if [ -d ".lsk/$dir" ]; then
        pass "Found .lsk/$dir/ (optional)"
    fi
done

# ============================================================================
# 2. Context Packs
# ============================================================================
section "📋 Context Packs"

CONTEXT_PACK_COUNT=$(find .lsk/context-packs -name "*.yaml" -o -name "*.yml" 2>/dev/null | wc -l | tr -d ' ')

if [ "$CONTEXT_PACK_COUNT" -gt 0 ]; then
    pass "Found $CONTEXT_PACK_COUNT context pack(s)"
    
    # List context packs
    find .lsk/context-packs -name "*.yaml" -o -name "*.yml" 2>/dev/null | while read -r file; do
        echo "  - $(basename "$file")"
    done
else
    warn "No context packs found in .lsk/context-packs/"
    info "Context packs help structure AI conversations"
fi

# ============================================================================
# 3. Phase Plans
# ============================================================================
section "📊 Phase Plans"

PHASE_PLAN_COUNT=$(find .lsk/phase-plans -name "*.yaml" -o -name "*.yml" 2>/dev/null | wc -l | tr -d ' ')

if [ "$PHASE_PLAN_COUNT" -gt 0 ]; then
    pass "Found $PHASE_PLAN_COUNT phase plan(s)"
else
    warn "No phase plans found in .lsk/phase-plans/"
    info "Phase plans track development progress"
fi

# ============================================================================
# 4. Checkpoints
# ============================================================================
section "🎯 Checkpoints"

CHECKPOINT_COUNT=$(find .lsk/checkpoints -name "*.md" 2>/dev/null | wc -l | tr -d ' ')

if [ "$CHECKPOINT_COUNT" -gt 0 ]; then
    pass "Found $CHECKPOINT_COUNT checkpoint(s)"
    
    # Show most recent checkpoint
    LATEST_CHECKPOINT=$(find .lsk/checkpoints -name "*.md" -type f 2>/dev/null | sort | tail -n 1)
    if [ -n "$LATEST_CHECKPOINT" ]; then
        info "Latest: $(basename "$LATEST_CHECKPOINT")"
    fi
else
    warn "No checkpoints found in .lsk/checkpoints/"
    info "Checkpoints document progress and decisions"
fi

# ============================================================================
# 5. LSKv4.1.3 Pattern Usage
# ============================================================================
section "🎯 LSKv4.1.3 Pattern Adoption"

# Pattern 1: Risk Assessment
if [ -d ".lsk/risks" ]; then
    RISK_ASSESSMENT_COUNT=$(find .lsk/risks -name "*risk*" 2>/dev/null | wc -l | tr -d ' ')
    if [ "$RISK_ASSESSMENT_COUNT" -gt 0 ]; then
        pass "Risk Assessment pattern in use ($RISK_ASSESSMENT_COUNT file(s))"
    else
        info "Risk Assessment pattern available but not yet used"
    fi
else
    info "Risk Assessment: Not initialized (create .lsk/risks/)"
fi

# Pattern 2: Spike-and-Refine
if grep -r "spike" .lsk/ 2>/dev/null | grep -q -i "spike\|prototype\|poc"; then
    pass "Spike-and-Refine pattern: Evidence found"
else
    info "Spike-and-Refine pattern: No evidence (check lessons-learned/)"
fi

# Pattern 3: Workspace Organization
if [ -d "spec" ] && [ -d "implementation" ]; then
    pass "Workspace Organization: spec/ and implementation/ separation"
elif [ -d "spec" ] || [ -d "implementation" ]; then
    warn "Workspace Organization: Partial separation (spec/ or implementation/)"
else
    info "Workspace Organization: Not using spec/implementation separation"
fi

# Pattern 4: Core-First Development
if grep -r "core-first\|defer.*infrastructure\|defer.*auth" .lsk/ 2>/dev/null | head -n 1 >/dev/null; then
    pass "Core-First Development: Evidence found"
else
    info "Core-First Development: No evidence in .lsk/ files"
fi

# ============================================================================
# 6. Lessons Learned Tracking
# ============================================================================
section "📚 Lessons Learned"

if [ -d ".lsk/lessons-learned" ] || [ -d "lessons-learned" ]; then
    LESSONS_DIR=".lsk/lessons-learned"
    [ ! -d "$LESSONS_DIR" ] && LESSONS_DIR="lessons-learned"
    
    LESSONS_COUNT=$(find "$LESSONS_DIR" -name "*.md" 2>/dev/null | wc -l | tr -d ' ')
    if [ "$LESSONS_COUNT" -gt 0 ]; then
        pass "Found $LESSONS_COUNT lesson(s) documented"
    else
        warn "lessons-learned/ exists but is empty"
    fi
else
    info "No lessons-learned/ directory (optional)"
    info "Create with: mkdir -p .lsk/lessons-learned"
fi

# ============================================================================
# 7. Project Quality Metrics
# ============================================================================
section "📊 Project Quality Metrics"

echo ""
echo "  LSK Artifacts:"
echo "  ─────────────────────────────────────────"
echo "  Context Packs:      $CONTEXT_PACK_COUNT"
echo "  Phase Plans:        $PHASE_PLAN_COUNT"
echo "  Checkpoints:        $CHECKPOINT_COUNT"

if [ -d ".lsk/risks" ]; then
    RISK_COUNT=$(find .lsk/risks -type f 2>/dev/null | wc -l | tr -d ' ')
    echo "  Risk Assessments:   $RISK_COUNT"
fi

if [ -d ".lsk/lessons-learned" ]; then
    LESSON_COUNT=$(find .lsk/lessons-learned -name "*.md" 2>/dev/null | wc -l | tr -d ' ')
    echo "  Lessons Learned:    $LESSON_COUNT"
fi

echo ""

# Calculate activity score
ACTIVITY_SCORE=0
[ "$CONTEXT_PACK_COUNT" -gt 0 ] && ((ACTIVITY_SCORE+=20))
[ "$PHASE_PLAN_COUNT" -gt 0 ] && ((ACTIVITY_SCORE+=20))
[ "$CHECKPOINT_COUNT" -gt 0 ] && ((ACTIVITY_SCORE+=20))
[ -d ".lsk/risks" ] && [ "$RISK_COUNT" -gt 0 ] && ((ACTIVITY_SCORE+=20))
[ -d ".lsk/lessons-learned" ] && [ "$LESSON_COUNT" -gt 0 ] && ((ACTIVITY_SCORE+=20))

echo "  LSK Activity Score: ${ACTIVITY_SCORE}/100"

if [ "$ACTIVITY_SCORE" -ge 80 ]; then
    echo -e "  ${GREEN}Status: Excellent LSK usage!${NC}"
elif [ "$ACTIVITY_SCORE" -ge 60 ]; then
    echo -e "  ${GREEN}Status: Good LSK usage${NC}"
elif [ "$ACTIVITY_SCORE" -ge 40 ]; then
    echo -e "  ${YELLOW}Status: Moderate LSK usage${NC}"
elif [ "$ACTIVITY_SCORE" -ge 20 ]; then
    echo -e "  ${YELLOW}Status: Getting started with LSK${NC}"
else
    echo -e "  ${YELLOW}Status: Minimal LSK usage${NC}"
fi

# ============================================================================
# 8. Code Quality Checks (if in a code project)
# ============================================================================
section "🔧 Code Quality Checks"

if [ -d "src" ] || [ -d "implementation/src" ]; then
    # Check for test coverage
    if [ -f "coverage/coverage-summary.json" ]; then
        pass "Test coverage report found"
    elif find . -name "*.test.*" -o -name "*.spec.*" 2>/dev/null | head -n 1 | grep -q .; then
        warn "Tests exist but no coverage report"
        info "Run tests with coverage: npm test -- --coverage"
    else
        info "No test files found"
    fi
    
    # Check for linter config
    if [ -f ".eslintrc.js" ] || [ -f ".eslintrc.json" ] || [ -f "pyproject.toml" ] || [ -f ".flake8" ]; then
        pass "Linter configuration found"
    else
        info "No linter configuration detected"
    fi
else
    info "No src/ directory detected - skipping code quality checks"
fi

# ============================================================================
# 9. Recommendations
# ============================================================================
section "💡 Recommendations"

RECOMMENDATIONS=()

if [ "$CONTEXT_PACK_COUNT" -eq 0 ]; then
    RECOMMENDATIONS+=("Create a context pack: cp lskv4.1/core/templates/context.pack.yaml .lsk/context-packs/")
fi

if [ "$CHECKPOINT_COUNT" -eq 0 ]; then
    RECOMMENDATIONS+=("Document progress with checkpoints after completing phases")
fi

if [ ! -d ".lsk/risks" ]; then
    RECOMMENDATIONS+=("Initialize risk assessment: mkdir -p .lsk/risks")
fi

if [ ! -d ".lsk/lessons-learned" ]; then
    RECOMMENDATIONS+=("Track lessons learned: mkdir -p .lsk/lessons-learned")
fi

if [ "$ACTIVITY_SCORE" -lt 40 ]; then
    RECOMMENDATIONS+=("Review LSKv4.1 QUICK_START.md to learn core patterns")
fi

if [ ${#RECOMMENDATIONS[@]} -gt 0 ]; then
    echo ""
    for rec in "${RECOMMENDATIONS[@]}"; do
        echo "  • $rec"
    done
else
    echo ""
    echo -e "  ${GREEN}🎉 Great! Your LSK project is well-structured.${NC}"
fi

# ============================================================================
# Summary
# ============================================================================
section "📈 Validation Summary"

TOTAL_CHECKS=$((CHECKS_PASSED + CHECKS_FAILED))
PASS_RATE=0
if [ "$TOTAL_CHECKS" -gt 0 ]; then
    PASS_RATE=$((CHECKS_PASSED * 100 / TOTAL_CHECKS))
fi

echo ""
echo "  Checks Passed:  ${GREEN}$CHECKS_PASSED${NC}"
echo "  Checks Failed:  ${RED}$CHECKS_FAILED${NC}"
echo "  Warnings:       ${YELLOW}$WARNINGS${NC}"
echo "  Pass Rate:      ${PASS_RATE}%"
echo ""

if [ "$CHECKS_FAILED" -eq 0 ]; then
    echo -e "${GREEN}✅ Validation complete: All critical checks passed!${NC}"
    exit 0
else
    echo -e "${YELLOW}⚠️  Validation complete: Some checks failed${NC}"
    echo "Review the output above and address any critical issues."
    exit 1
fi

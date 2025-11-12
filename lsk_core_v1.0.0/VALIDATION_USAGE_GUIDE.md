# LSK Core v5.0 Validation Script - Usage Guide

## Overview

The validation script checks LSK Core v5.0 project structure, pattern usage, and quality metrics.

**Location:** `lsk_core_v5.0/scripts/validate.sh`

---

## Prerequisites

Your project must be initialized with LSK:

```bash
# Initialize LSK in your project
cd /path/to/your/project
mkdir -p .lsk/{context-packs,checkpoints,phase-plans,risks,lessons-learned}
```

---

## Running Validation

### From Your Project Directory

```bash
cd /path/to/your/project

# Run validation
/path/to/lsk_core_v5.0/scripts/validate.sh
```

### Example: Create a Test Project

```bash
# Create a test project
mkdir -p ~/test-lsk-project
cd ~/test-lsk-project

# Initialize LSK structure
mkdir -p .lsk/{context-packs,checkpoints,phase-plans}

# Create a sample context pack
cat > .lsk/context-packs/test-project.yaml <<EOF
metadata:
  task_id: "test-001"
  title: "Test Project"
objective:
  problem: "Testing LSK validation"
EOF

# Create a checkpoint
cat > .lsk/checkpoints/checkpoint-test.md <<EOF
# Test Checkpoint
- Completed: Initial setup
- Next: Implementation
EOF

# Now run validation
/path/to/lsk_core_v5.0/scripts/validate.sh
```

---

## Expected Output

### Successful Validation

```
╔═══════════════════════════════════════════════════════════════╗
║                  LSKv4.1 Project Validation                   ║
╚═══════════════════════════════════════════════════════════════╝

ℹ️  Project root: /path/to/your/project

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📁 LSK Project Structure
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
✅ Found .lsk/ directory
✅ Found .lsk/context-packs/
✅ Found .lsk/checkpoints/
✅ Found .lsk/phase-plans/

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📋 Context Packs
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
✅ Found 2 context pack(s)
  - project-feature.yaml
  - project-api.yaml

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📊 Phase Plans
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
✅ Found 1 phase plan(s)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🎯 Checkpoints
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
✅ Found 3 checkpoint(s)
ℹ️  Latest: checkpoint@implementation_2025-10-11.md

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🎯 LSKv4.1.3 Pattern Adoption
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
✅ Risk Assessment pattern in use (1 file(s))
✅ Spike-and-Refine pattern: Evidence found
ℹ️  Workspace Organization: Not using spec/implementation separation
ℹ️  Core-First Development: No evidence in .lsk/ files

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📚 Lessons Learned
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
✅ Found 2 lesson(s) documented

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📊 Project Quality Metrics
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

  LSK Artifacts:
  ─────────────────────────────────────────
  Context Packs:      2
  Phase Plans:        1
  Checkpoints:        3
  Risk Assessments:   1
  Lessons Learned:    2

  LSK Activity Score: 80/100
  Status: Excellent LSK usage!

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
💡 Recommendations
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

  🎉 Great! Your LSK project is well-structured.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📈 Validation Summary
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

  Checks Passed:  15
  Checks Failed:  0
  Warnings:       2
  Pass Rate:      100%

✅ Validation complete: All critical checks passed!
```

---

### Missing LSK Structure

```
❌ Error: Not in an LSK project (no .lsk/ folder found)
To initialize LSK in this project:
  mkdir -p .lsk/{context-packs,checkpoints,phase-plans,risks}
```

---

## What the Script Checks

### 1. **Structure Validation**
- ✅ `.lsk/` directory exists
- ✅ Required subdirectories present
- ✅ Optional directories noted

### 2. **Artifact Counts**
- 📋 Context packs (`.yaml` files)
- 📊 Phase plans
- 🎯 Checkpoints (`.md` files)
- 🎯 Risk assessments
- 📚 Lessons learned

### 3. **Pattern Adoption**
- Risk Assessment usage
- Spike-and-Refine evidence
- Workspace Organization (spec/implementation)
- Service Boundaries
- Core-First Development

### 4. **Code Quality** (if applicable)
- Test coverage reports
- Linter configuration
- Test file presence

### 5. **Activity Score**
- Calculated based on LSK usage
- 0-100 scale
- Status feedback

---

## Integration with CI/CD

### GitHub Actions Example

```yaml
# .github/workflows/lsk-validation.yml
name: LSK Validation

on: [push, pull_request]

jobs:
  validate-lsk:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      
      - name: Run LSK Validation
        run: |
          # Assuming lsk_core_v5.0 is in your repo
          ./lsk_core_v5.0/scripts/validate.sh
      
      - name: Upload Validation Results
        if: always()
        uses: actions/upload-artifact@v3
        with:
          name: lsk-validation
          path: validation-report.txt
```

### GitLab CI Example

```yaml
# .gitlab-ci.yml
lsk-validation:
  stage: test
  script:
    - ./lsk_core_v5.0/scripts/validate.sh
  artifacts:
    reports:
      junit: lsk-validation-report.xml
    when: always
```

---

## Automation Tips

### Pre-commit Hook

```bash
# .git/hooks/pre-commit
#!/bin/bash

echo "Running LSK validation..."
./lsk_core_v5.0/scripts/validate.sh

if [ $? -ne 0 ]; then
    echo "❌ LSK validation failed. Commit aborted."
    echo "Fix issues or use 'git commit --no-verify' to skip."
    exit 1
fi
```

### VS Code Task

```json
// .vscode/tasks.json
{
  "version": "2.0.0",
  "tasks": [
    {
      "label": "Validate LSK Project",
      "type": "shell",
      "command": "./lsk_core_v5.0/scripts/validate.sh",
      "group": "test",
      "presentation": {
        "reveal": "always",
        "panel": "shared"
      }
    }
  ]
}
```

---

## Troubleshooting

### "Not in an LSK project"
**Solution:** Initialize LSK structure
```bash
mkdir -p .lsk/{context-packs,checkpoints,phase-plans,risks,lessons-learned}
```

### Script not executable
**Solution:** Make it executable
```bash
chmod +x /path/to/lsk_core_v5.0/scripts/validate.sh
```

### Wrong directory
**Solution:** Run from your project root (not from lsk_core_v5.0/)
```bash
cd /path/to/your/project  # Not /path/to/lsk_core_v5.0
/path/to/lsk_core_v5.0/scripts/validate.sh
```

---

## Customization

The script is designed to be customized. Edit `validate.sh` to:

- Add project-specific checks
- Adjust quality thresholds
- Add custom pattern detection
- Modify scoring algorithm

Example customization:
```bash
# Add custom check
if grep -r "TODO" src/; then
    warn "TODO comments found in code"
fi
```

---

## Summary

**The validation script helps you:**
1. ✅ Ensure LSK structure is correct
2. ✅ Track pattern adoption
3. ✅ Monitor project quality
4. ✅ Get actionable recommendations

**Run it:**
- Manually during development
- In pre-commit hooks
- In CI/CD pipelines
- Before major milestones

**Result:** Better LSK usage and project quality!


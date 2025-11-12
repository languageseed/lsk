# Migrating from LSKv4.1 to LSK Core v5.0

**Version:** 5.0.0  
**Date:** October 11, 2025  
**Time Required:** 15-30 minutes for documentation updates

---

## 🎯 Overview

LSK Core v5.0 is **100% backward compatible** with LSKv4.1.x. This is a naming and positioning update, not a breaking change.

**What's Changed:**
- Name: "LSKv4.1" → "LSK Core v5.0"
- Positioning: "Living framework" → "Stable foundation"
- Status: "Evolving" → "Proven"

**What Hasn't Changed:**
- All templates still work
- All recipes still work
- All workflows still work
- No code changes required

---

## ✅ Migration Checklist

### Required (5 minutes)

- [ ] **Update folder reference**
  - Old: `lskv4.1/`
  - New: `lsk_core_v5.0/`

- [ ] **Update documentation references**
  - Replace "LSKv4.1" with "LSK Core v5.0"
  - Replace "lskv4.1" with "lsk_core_v5.0"

### Recommended (10-20 minutes)

- [ ] **Run validation script**
  ```bash
  cd /path/to/lsk_core_v5.0
  ./scripts/validate.sh
  ```

- [ ] **Review new features**
  - Read [WHATS_NEW_v5.0.md](WHATS_NEW_v5.0.md)
  - Check [VERSION.yaml](VERSION.yaml) for v5.0 details

- [ ] **Check quality gates**
  - Review measurable quality gates in `core/contracts/pipeline-v4.2.yaml`
  - Ensure your project meets them

### Optional (10+ minutes)

- [ ] **Add artifact metadata**
  - Use `core/templates/artifact-metadata.template.yaml`
  - Link code to decisions and patterns
  - Improves traceability

- [ ] **Review framework family**
  - Read "Related LSK Frameworks" in [README.md](README.md)
  - Consider LSK_UX for frontend work
  - Consider LSK-AIA for AI agent development

---

## 📝 Detailed Migration Steps

### Step 1: Update Folder References

If you reference the LSK folder in your project:

**Before:**
```yaml
# In your context packs or documentation
lsk_path: "lskv4.1/"
templates: "lskv4.1/core/templates/"
```

**After:**
```yaml
# In your context packs or documentation
lsk_path: "lsk_core_v5.0/"
templates: "lsk_core_v5.0/core/templates/"
```

---

### Step 2: Update Documentation References

**Search and replace in your project documentation:**

| Old | New |
|-----|-----|
| `LSKv4.1` | `LSK Core v5.0` |
| `lskv4.1/` | `lsk_core_v5.0/` |
| `LSKv4` | `LSK Core v5` |
| `"LSK v4.1"` | `"LSK Core v5.0"` |

**Example:**
```markdown
# Before
We use LSKv4.1 for AI-assisted development.
See templates in lskv4.1/core/templates/

# After
We use LSK Core v5.0 for AI-assisted development.
See templates in lsk_core_v5.0/core/templates/
```

---

### Step 3: Run Validation Script

**Purpose:** Check if your project follows LSK patterns correctly.

```bash
# Navigate to LSK Core
cd /path/to/lsk_core_v5.0

# Run validation
./scripts/validate.sh
```

**Expected Output:**
```
--- LSK Core v5.0 Project Validation ---
INFO: Validating LSK Core framework structure...
✅ SUCCESS: LSK Core framework structure is intact.

INFO: Validating LSK Core usage in project: /path/to/your/project
INFO: Found 3 context pack(s).
INFO: Found 5 checkpoint(s).
⚠️  WARNING: No risk assessments found. Use 'core/templates/risk-assessment.template.yaml'.
⚠️  WARNING: No artifact metadata files found. Use 'core/templates/artifact-metadata.template.yaml' for traceability.

--- Validation Complete ---
```

**Warnings are OK!** They just suggest opportunities for improvement.

---

### Step 4: Review v5.0 Features

**New in v5.0:**

1. **Validation Script** (`scripts/validate.sh`)
   - Automated quality checks
   - Use it to verify LSK usage

2. **Artifact Metadata** (`core/templates/artifact-metadata.template.yaml`)
   - Link code to decisions
   - Improve traceability
   - Optional but recommended

3. **Quality Gates** (in `core/contracts/pipeline-v4.2.yaml`)
   - Measurable criteria for implementation and integration
   - Test coverage >80%
   - 0 critical errors
   - Code review approved

4. **Framework Family Documentation**
   - LSK Core for backend/API development
   - LSK_UX for frontend/design work
   - LSK-AIA for AI agent development

**Read more:** [WHATS_NEW_v5.0.md](WHATS_NEW_v5.0.md)

---

### Step 5 (Optional): Add Artifact Metadata

**Purpose:** Link code to LSK patterns and decisions for better traceability.

**For each significant code artifact:**

1. Copy the template:
   ```bash
   cp lsk_core_v5.0/core/templates/artifact-metadata.template.yaml \
      your_project/.lsk/metadata/user-auth-service-artifact.yaml
   ```

2. Fill it out:
   ```yaml
   metadata:
     artifact_id: "user-auth-service-v1"
     artifact_name: "User Authentication Service"
     artifact_type: "code"
     version: "1.0.0"
     created_at: "2025-10-05"
     status: "complete"
   
   lsk_patterns_applied:
     - pattern: "risk_assessment"
       description: "JWT implementation was high risk, so we did a PoC first"
       linked_resource: ".lsk/risks/auth-risk-assessment.yaml"
     
     - pattern: "spike_and_refine"
       description: "Spiked JWT refresh flow for 4 hours to find edge cases"
       learnings_documented_at: ".lsk/lessons-learned/jwt-spike.md"
   ```

3. Reference in your code:
   ```python
   # src/auth/service.py
   # Metadata: .lsk/metadata/user-auth-service-artifact.yaml
   ```

**Benefit:** When you (or others) revisit the code, you can quickly see:
- What patterns were used
- What decisions were made
- What risks were assessed

---

## 🤔 FAQs

### Do I need to change my code?
**No.** This is a documentation and positioning update. Your code doesn't change.

### Do I need to rewrite my context packs?
**No.** All LSKv4.1 context packs work in v5.0.

### Will there be breaking changes in v5.x?
**No.** All v5.x releases will be backward compatible. Breaking changes only in v6.0+.

### What if I skip the optional steps?
**That's fine!** The optional steps (artifact metadata, validation script) are improvements, not requirements.

### Can I still use "LSKv4.1" in my documentation?
**Yes, but not recommended.** It'll be confusing as v5.0 becomes the standard. Better to update now.

### What happened to v4.1.4?
**It's consolidated into v5.0.** All v4.1.x improvements are now part of v5.0.

### When should I use LSK_UX or LSK-AIA instead?
- **LSK Core:** Backend, APIs, services, general dev
- **LSK_UX:** UX/UI design, wireframes, prototypes, design systems
- **LSK-AIA:** AI agents, chatbots, coding assistants

You can use multiple frameworks in the same project!

---

## 📊 Migration Impact

### Time Investment
- **Required:** 5 minutes (folder/doc references)
- **Recommended:** 10-20 minutes (validation, review new features)
- **Optional:** 10+ minutes (artifact metadata)
- **Total:** 15-30 minutes

### Risk Level
**Very Low** - No breaking changes, all existing work still valid.

### Value Gained
- ✅ Aligned with stable v5.0 foundation
- ✅ Access to validation tooling
- ✅ Improved traceability (if using artifact metadata)
- ✅ Clear quality gates
- ✅ Updated documentation

---

## 🚀 Next Steps

1. **Complete the checklist above**
2. **Read [WHATS_NEW_v5.0.md](WHATS_NEW_v5.0.md)** for full v5.0 overview
3. **Try the validation script** on your project
4. **Consider adding artifact metadata** for key components
5. **Keep capturing learnings** in `lessons-learned/`

---

## 📞 Need Help?

- **Documentation:** All guides in `lsk_core_v5.0/`
- **Version History:** [VERSION.yaml](VERSION.yaml)
- **What's New:** [WHATS_NEW_v5.0.md](WHATS_NEW_v5.0.md)
- **Validation Guide:** [VALIDATION_USAGE_GUIDE.md](VALIDATION_USAGE_GUIDE.md)

---

**Welcome to LSK Core v5.0 - The Stable Foundation**



# LSK Core v1.0.0 Rebaseline Plan

**Purpose:** Clean up internal version history for public v1.0.0 release

---

## 📋 Files Requiring Updates

### **Category 1: Core Documentation (UPDATE)**
These files need v5.0/v4.1 references changed to v1.0.0:

- [x] `README.md` - Partially updated, needs full review
- [ ] `QUICK_START.md` - Update version references
- [ ] `INDEX.md` - Update version references  
- [ ] `CONTRIBUTING.md` - Update version references
- [ ] `EVOLUTION_GUIDE.md` - Update version references
- [ ] `VALIDATION_USAGE_GUIDE.md` - Update version references
- [ ] `WORKSPACE_ORGANIZATION_GUIDE.md` - Update version references
- [ ] `SERVICE_BOUNDARIES_QUICK_REF.md` - Update version references
- [ ] `CORE_FIRST_QUICK_REF.md` - Update version references
- [ ] `docs/LLM_OPERATING_GUIDE.md` - Update version references

### **Category 2: Templates & Recipes (UPDATE)**
- [ ] `core/templates/recipes.md` - Update version references
- [ ] `core/templates/recipes/spike-and-refine.recipe.md` - Update version references
- [ ] `core/templates/conversation.checkpoint.template.md` - Update version references
- [ ] `core/templates/workflows.md` - Update version references
- [ ] `core/templates/artifact-metadata.template.yaml` - Update version references
- [ ] `core/seeds/README.md` - Update version references

### **Category 3: Examples (UPDATE)**
- [ ] `examples/README.md` - Update version references
- [ ] `examples/01-simple-feature/README.md` - Update version references
- [ ] `examples/01-simple-feature/context-pack.yaml` - Update version references

### **Category 4: Version Files (MAJOR UPDATE)**
- [ ] `VERSION.yaml` - Clean up internal version history, keep v1.0.0
- [ ] `CHANGELOG.md` - Simplify for public release

---

## 🗑️ Files to REMOVE (Internal History)

These files document internal development and are not relevant for public v1.0.0:

### **Version Migration Docs (DELETE)**
- [ ] `MIGRATION_TO_V5.md` - Internal migration, not relevant
- [ ] `WHATS_NEW_v4.1.3.md` - Internal version history
- [ ] `WHATS_NEW_v4.1.4.md` - Internal version history
- [ ] `WHATS_NEW_v5.0.md` - Will be replaced with WHATS_NEW_v1.0.0.md
- [ ] `V5_SUMMARY.md` - Internal summary

### **Internal Development Docs (DELETE)**
- [ ] `LSKV4.1_IMPROVEMENT_ANALYSIS.md` - Internal analysis (5.5M token study)
- [ ] `HOW_LSK_EVOLVED.md` - Internal evolution story
- [ ] `SUMMARY_OF_IMPROVEMENTS.md` - Internal summary
- [ ] `COMPLETION_SUMMARY.md` - Internal release notes

### **Temporary Files (DELETE)**
- [ ] `GITHUB_SYNC_PREP.md` - Temporary sync instructions

### **Lessons Learned (REVIEW)**
- [ ] `lessons-learned/2025-10-cursor-conversation-insights.md` - Contains v4.1 references, consider archiving

---

## ✨ Files to CREATE

### **New Public-Facing Docs**
- [ ] `WHATS_NEW_v1.0.0.md` - Clean public release notes
- [ ] `BACKGROUND.md` (optional) - Brief development background without version details

---

## 🔄 Specific Updates Needed

### **VERSION.yaml**
**Current:** References v5.0.0, v4.1.x history, internal development  
**Target:** Clean v1.0.0 first public release
- Remove all v4.1.x and v5.0.0 entries
- Keep only v1.0.0 as initial public release
- Simplify roadmap
- Remove internal framework_family references to specific paths

### **CHANGELOG.md**
**Current:** Full v4.1.x → v5.0.0 history  
**Target:** Start with v1.0.0
- Remove all entries before v1.0.0
- Simplify v1.0.0 entry to focus on "what's included" not "what changed from v4"
- Remove internal development references

### **README.md**
**Current:** Mentions v5.0, internal development  
**Target:** Pure v1.0.0 public messaging
- Update all badges to v1.0.0
- Remove "consolidation from v4.1.x" language
- Focus on "what it is" not "how we got here"
- Update version history section

---

## 📊 Reference Updates Strategy

### **Replace:**
- `v5.0` → `v1.0`
- `v5.0.0` → `v1.0.0`
- `LSK Core v5.0` → `LSK Core v1.0`
- `LSKv4.1` → `LSK Core v1.0`
- `v4.1.x` → (remove or context-dependent)

### **Remove Phrases:**
- "consolidates all v4.1.x learnings"
- "migration from v4.1"
- "After analyzing 11 conversations" (keep the data, remove the "after" context)
- "Based on v4.1 experience"
- Internal version comparisons

### **Keep:**
- "Based on 11 conversations (5.5M tokens)" ✓
- "5+ production projects" ✓
- "Proven patterns" ✓
- Metrics (10-20x ROI, etc.) ✓
- Real-world validation ✓

---

## 🎯 Public Release Message

**For v1.0.0, focus on:**
1. **What it is** - A proven methodology
2. **What it includes** - Templates, recipes, patterns
3. **What it's based on** - Real projects and conversations
4. **What it delivers** - Measurable improvements

**Not:**
1. Internal development history
2. Version migrations
3. How we evolved from previous versions
4. Internal decision processes

---

## 📝 Implementation Order

1. **Remove internal files** (Category: DELETE) - Clean slate
2. **Update VERSION.yaml** - Single source of truth
3. **Update CHANGELOG.md** - Clean history
4. **Update core docs** - README, QUICK_START, INDEX
5. **Create WHATS_NEW_v1.0.0.md** - Public release notes
6. **Update templates/recipes** - Consistency
7. **Update examples** - Correct references
8. **Final verification** - Grep for old versions

---

## ✅ Verification Checklist

After updates:
- [ ] No references to v5.0 or v4.1 (except in removed files context if kept)
- [ ] All docs reference v1.0.0
- [ ] No "migration" or "consolidation" language
- [ ] No internal development history
- [ ] Focus on public value, not internal evolution
- [ ] Badges show v1.0.0
- [ ] Examples use v1.0.0
- [ ] Templates reference v1.0.0

---

## 🎬 Next Steps

1. Review this plan
2. Execute removals
3. Execute updates
4. Create new public-facing docs
5. Final verification
6. Commit and push

---

**Goal:** Clean, professional v1.0.0 public release without internal development baggage.


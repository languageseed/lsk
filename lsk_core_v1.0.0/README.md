# LSK Core v1.0 - Language Seed Kit Core
## The Proven Foundation for AI-Assisted Development

<div align="center">

![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)
![Status](https://img.shields.io/badge/status-stable-green.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)
![Conversations Analyzed](https://img.shields.io/badge/conversations%20analyzed-11%20(5.5M%20tokens)-orange.svg)
![Projects Validated](https://img.shields.io/badge/projects%20validated-5%2B-brightgreen.svg)

**[Quick Start](QUICK_START.md)** • **[Documentation](INDEX.md)** • **[Contributing](CONTRIBUTING.md)** • **[Changelog](CHANGELOG.md)**

</div>

---

**Version:** 1.0.0 (November 2025)  
**Status:** Stable Foundation  
**Philosophy:** Real experience over theory

---

## What is LSK Core?

LSK Core is a **proven methodology** for AI-assisted development. It provides:

- **Templates** for structuring context and requirements
- **Recipes** for common development workflows
- **Patterns** from successful real-world projects
- **Pipeline** for managing project phases
- **Evolution system** for continuous improvement

**Key Difference:** This isn't theoretical documentation. It's a **proven foundation** built from real projects and 5.5M tokens of analyzed conversations.

---

## 🌟 What Makes LSK Core v1.0 Different

### 1. Based on Real Conversations
Analyzed **11 Cursor AI conversations (5.5M tokens)** to identify what actually works:
- Success patterns from 9.0+ rated conversations
- Failure patterns from <7.0 rated conversations
- Empirical evidence, not theory

### 2. Proven and Stable
v1.0 represents the first public release of validated patterns:
```
Validated Patterns → Production Use → Stable Framework → v1.0
```

**Stability Commitment:** All v1.x releases are backward compatible. Breaking changes only in v2.0+.

### 3. Practical, Not Academic
Every pattern comes from real project experience:
- Risk assessment: DOCeater project
- Spike-and-refine: Knowledge graph development
- Service boundaries: Multi-service architectures
- Workspace organization: Complex builds

---

## 🚀 Quick Start

> **👉 New to LSK Core?** Start here: **[QUICK_START.md](QUICK_START.md)** (5 minutes)

For complete details on this release, see **[WHATS_NEW_v1.0.0.md](WHATS_NEW_v1.0.0.md)**

### Option 1: Jump Right In (5 minutes)
1. Read [QUICK_START.md](QUICK_START.md)
2. Copy `core/templates/context.pack.yaml` to your project
3. Fill it out and share with AI
4. Start building

### Option 2: Learn the Patterns (30 minutes)
1. Read [WHATS_NEW_v1.0.0.md](WHATS_NEW_v1.0.0.md) for the five proven patterns
2. Pick one pattern that fits your current work
3. Try it on a small task
4. Expand usage as you see value

### Option 3: Deep Dive (2 hours)
1. Review all templates in `core/templates/`
2. Try multiple patterns together
3. Set up workspace organization
4. Integrate into your full workflow

---

## 🎯 Four Critical Patterns

### 1. Risk Assessment & PoC Validation
**Before committing to implementation, validate risky assumptions**

```yaml
When: Building something with significant unknowns
Time: 30 min assessment + 4-8 hours per PoC
ROI: 10-20x time saved

Process:
  1. Identify most uncertain aspects
  2. Design lean PoCs to test assumptions
  3. Execute PoCs (time-boxed)
  4. Extract learnings
  5. Proceed with validated knowledge
```

**Files:** `risk-assessment.template.yaml`, `recipes/risk-assessment-poc.recipe.md`

---

### 2. Spike-and-Refine (Learning by Building)
**For unfamiliar territory, prototype messily then rebuild properly**

```yaml
When: Building something you don't fully understand
Time: 1-2h spike + 30min learnings + 1-2h clean rebuild
ROI: 2-3x faster than "perfect first time"

Process:
  1. Code fast & messy (discover what breaks)
  2. Extract learnings (what worked, what didn't)
  3. Rebuild clean (with understanding)
```

**Files:** `recipes/spike-and-refine.recipe.md`, `learning-by-building.template.yaml`

---

### 3. Workspace Organization
**Separate planning (spec/) from coding (implementation/)**

```yaml
When: Complex projects where mixed files create cognitive load
Structure:
  spec/           → WHAT to build (requirements, architecture)
  implementation/ → HOW to build (code, tests)
  .lsk/          → Bridge between them

Benefit: Better focus, less context switching
```

**Files:** `workspace-organization.template.yaml`, `WORKSPACE_ORGANIZATION_GUIDE.md`

---

### 4. Service Boundaries
**Manage multi-service complexity with clear boundaries**

```yaml
When: Multi-service/microservices architecture
Problem: Integration points grow as N(N-1)/2
Solution:
  - One container per service
  - Clear inputs and outputs
  - ≤3 dependencies each
  - Document every integration point

Impact: 50-80% fewer integration issues
```

**Files:** `service-boundaries.template.yaml`, `SERVICE_BOUNDARIES_QUICK_REF.md`

---

## 📁 What's In The Box

### Core Templates (`core/templates/`)
- `context.pack.yaml` - Main context structure
- `phase.plan.yaml` - Phase tracking
- `checkpoint.md` - Progress checkpoints
- `risk-assessment.template.yaml` - Risk & PoC planning ⭐
- `workspace-organization.template.yaml` - Folder structure ⭐
- `service-boundaries.template.yaml` - Multi-service patterns ⭐
- `development-sequencing.template.yaml` - Core-first approach ⭐
- `artifact-metadata.template.yaml` - Traceability ⭐

### Recipes (`core/templates/recipes/`)
- `risk-assessment-poc.recipe.md` - PoC methodology ⭐
- `spike-and-refine.recipe.md` - Learning by building ⭐
- `debugging-conversation.recipe.md` - Enhanced with evidence checkpoints
- `requirements-gathering.recipe.md`
- `architecture-review.recipe.md`
- `quick-api-design.recipe.md`
- `quick-code-review.recipe.md`
- `quick-documentation.recipe.md`

### Guides
- `WHATS_NEW_v5.0.md` - What changed in v5.0 ⭐
- `WORKSPACE_ORGANIZATION_GUIDE.md` - Detailed workspace setup
- `SERVICE_BOUNDARIES_QUICK_REF.md` - Multi-service quick reference
- `CORE_FIRST_QUICK_REF.md` - Development sequencing guide ⭐
- `VALIDATION_USAGE_GUIDE.md` - Using the validation script ⭐
- `EVOLUTION_GUIDE.md` - How to keep improving LSK Core

### Framework Management
- `VERSION.yaml` - Version history and roadmap
- `lessons-learned/` - Ongoing insights capture ⭐
- `scripts/validate.sh` - Automated validation ⭐
- `INDEX.md` - Complete navigation

---

## 🔄 The Evolution System

### LSK Core v5.0 continues to evolve:

```
1. Use LSK Core on real projects
   ↓
2. Notice what works / doesn't work
   ↓
3. Quick capture in lessons-learned/ (30 seconds)
   ↓
4. Monthly review (1 hour)
   ↓
5. Integrate valuable patterns into next v5.x
   ↓
6. Improved LSK Core
   ↓
[Repeat]
```

**v5.0 Stability:** Minor improvements only. Breaking changes deferred to v6.0+.

### How to Contribute Your Learnings:

**Quick Lesson** (30 seconds):
```bash
# Add to lessons-learned/
echo "## [Pattern] - [What worked]" >> lessons-learned/$(date +%Y-%m).md
```

**Full Pattern** (1-2 hours):
1. Create new recipe/template based on real experience
2. Document what worked and why
3. Add to INDEX.md
4. Update VERSION.yaml

**See:** [EVOLUTION_GUIDE.md](EVOLUTION_GUIDE.md) for complete details

---

## 📊 Success Metrics

### From Conversation Analysis:
- **Conversation quality:** 7.0 → 8.5+ (out of 10)
- **First-time success:** 50% → 70%+
- **Course corrections:** 3-5 → <2 per conversation
- **"Start again" usage:** 20% → <10%

### From Pattern Adoption:
- **Risk assessment ROI:** 10-20x time saved
- **Spike-and-refine ROI:** 2-3x faster development
- **Service boundaries:** 50-80% fewer integration issues
- **Workspace organization:** Reduced context switching fatigue

---

## 🎯 When to Use What

| Situation | Use This | Time Investment | Expected ROI |
|-----------|----------|-----------------|--------------|
| Starting new feature | Context pack + preflight checklist | 15 min | Better conversations |
| Significant unknowns | Risk assessment + PoCs | 4-8 hours | 10-20x saved |
| Unfamiliar territory | Spike-and-refine | 3-4 hours | 2-3x faster |
| Complex project | Workspace organization | 1 hour setup | Better focus |
| Multi-service | Service boundaries | 2-4 hours | 50-80% fewer issues |
| Debugging stuck | Evidence checkpoints + "after 3 failures" rule | 0 min | Saves hours |

---

## 📈 Version History

### v1.0.0 (November 2025) - Current
**The Foundation Release** - First Public Release

Includes five proven patterns:
- ✅ Risk Assessment & PoC Validation (10-20x ROI)
- ✅ Spike-and-Refine (2-3x faster)
- ✅ Core-First Development (50-70% time saved)
- ✅ Workspace Organization (reduced cognitive load)
- ✅ Service Boundaries (78% fewer issues)

Complete toolkit:
- 15 templates for structuring development
- 8 recipes for common workflows
- Automated validation system
- Quality gates and traceability
- Examples and comprehensive documentation

**Based on:** 11 conversations (5.5M tokens), 5+ production projects

See [WHATS_NEW_v1.0.0.md](WHATS_NEW_v1.0.0.md) and [CHANGELOG.md](CHANGELOG.md) for details.

---

## 🔥 Quick Wins (Start Today)

### Win 1: Pre-Flight Checklist (2 minutes)
Before any AI conversation:
- Is problem statement specific?
- Are success criteria measurable?
- Have I shared domain knowledge?

**Impact:** Prevents 90% of confused conversations

### Win 2: "After 3 Failures" Rule (0 minutes)
When debugging:
- Attempt 1 → Failed
- Attempt 2 → Failed  
- Attempt 3 → Failed
- **STOP** → Question the approach

**Impact:** Saves hours on wrong paths

### Win 3: Spike Before Polishing (3-4 hours)
For unfamiliar work:
- 1-2 hours: Code fast & messy
- 30 min: Extract learnings
- 1-2 hours: Rebuild clean

**Impact:** 2x faster with better understanding

### Win 4: Separate Spec from Implementation (1 hour)
Create:
```
project/
├── spec/           # Planning
├── implementation/ # Coding
└── .lsk/          # Bridge
```

**Impact:** Better focus, less cognitive load

---

## 🎓 Learning Path

### Week 1: Foundation
- [ ] Read QUICK_START.md
- [ ] Try one context pack
- [ ] Use pre-flight checklist
- [ ] Apply "after 3 failures" rule

### Week 2: Risk Assessment
- [ ] Read risk-assessment-poc.recipe.md
- [ ] Identify risks in current project
- [ ] Run one 4-8 hour PoC
- [ ] Document learnings

### Week 3: Spike-and-Refine
- [ ] Read spike-and-refine.recipe.md
- [ ] Apply to unfamiliar feature
- [ ] Prototype → Learn → Rebuild
- [ ] Compare time saved

### Week 4: Full Adoption
- [ ] Set up workspace organization
- [ ] Use enhanced pipeline
- [ ] Track conversation quality
- [ ] Review and refine

---

## 📚 Documentation Map

**Start Here:**
- [QUICK_START.md](QUICK_START.md) - Get productive fast
- [SUMMARY_OF_IMPROVEMENTS.md](SUMMARY_OF_IMPROVEMENTS.md) - What's new

**Understand Patterns:**
- [LSKV4.1_IMPROVEMENT_ANALYSIS.md](LSKV4.1_IMPROVEMENT_ANALYSIS.md) - Deep analysis
- [WORKSPACE_ORGANIZATION_GUIDE.md](WORKSPACE_ORGANIZATION_GUIDE.md) - Folder structure
- [SERVICE_BOUNDARIES_QUICK_REF.md](SERVICE_BOUNDARIES_QUICK_REF.md) - Multi-service

**Use the Framework:**
- [INDEX.md](INDEX.md) - Complete navigation
- `core/templates/` - All templates
- `core/templates/recipes/` - All recipes

**Keep Improving:**
- [EVOLUTION_GUIDE.md](EVOLUTION_GUIDE.md) - How to add learnings
- [VERSION.yaml](VERSION.yaml) - Version history
- `lessons-learned/` - Ongoing insights

---

## 💡 Core Principles

1. **Real Experience Over Theory** - Every pattern comes from actual projects
2. **Progressive Disclosure** - Build context layer by layer
3. **Evidence Before Solutions** - Gather data before proposing fixes
4. **Discuss Before Implementing** - Explore options before committing
5. **Validate Risky Assumptions** - Use lean PoCs to test
6. **Learn by Building** - Prototypes are education
7. **Separate Concerns** - Planning separate from coding
8. **Clear Boundaries** - Explicit service inputs/outputs
9. **Question Failed Approaches** - After 2-3 attempts, reconsider
10. **Continuous Evolution** - Framework grows with your experience

---

## 🤝 Contributing

### Your insights make LSK better!

**Quick way:**
```bash
# 30 seconds
echo "What worked: [your insight]" >> lessons-learned/$(date +%Y-%m).md
```

**Comprehensive way:**
1. Use LSK on a project
2. Document what worked / didn't work
3. Create template or recipe based on experience
4. Share back to improve framework

See [EVOLUTION_GUIDE.md](EVOLUTION_GUIDE.md) for details.

---

## 📞 Support & Community

**Documentation:** All guides in this repo  
**Version:** See [VERSION.yaml](VERSION.yaml) and [CHANGELOG.md](CHANGELOG.md)  
**Status:** Stable Foundation, v1.0.0  
**Maintainer:** Ben  
**Repository:** https://github.com/languageseed/lsk  
**Last Updated:** November 12, 2025

### Getting Help
- 📖 **Read the docs:** Start with [INDEX.md](INDEX.md) for complete navigation
- 💬 **Discussions:** Ask questions and share experiences
- 🐛 **Issues:** Report bugs or request features
- 🤝 **Contributing:** See [CONTRIBUTING.md](CONTRIBUTING.md)

---

## 🎯 Bottom Line

**LSK Core v5.0 makes explicit what successful developers do implicitly.**

Based on:
- 11 real Cursor AI conversations (5.5M tokens)
- 5+ production projects
- Empirical analysis of success patterns
- Proven patterns with measurable impact

Result:
- ✅ Faster development (2-3x on unfamiliar territory)
- ✅ Better architecture (78% fewer integration issues)
- ✅ Higher quality (measurable quality gates)
- ✅ Fewer repeated mistakes (validated patterns)
- ✅ Stable foundation (backward compatible v1.x)

---

**Start with:** [QUICK_START.md](QUICK_START.md)  
**What's new:** [WHATS_NEW_v1.0.0.md](WHATS_NEW_v1.0.0.md)  
**Keep improving:** [EVOLUTION_GUIDE.md](EVOLUTION_GUIDE.md)

**This is v1.0.0 - The Stable Foundation. Your insights will shape v1.1 and beyond.**

---

## 🌐 Related LSK Frameworks

LSK Core v5.0 is part of a family of specialized frameworks for different development domains:

### **LSK_UX** - UX/UI Design Framework
**Purpose:** AI-assisted UX/UI design workflows from discovery to launch

**Location:** `/lsk_ux_v1.0/`

**Key Features:**
- 6-phase UX pipeline (Discovery → Wireframe → Visual Design → Integration → Testing → Launch)
- Visual artefact management with metadata
- Automated validation with Playwright (accessibility, responsive design, visual regression)
- Design system and component library workflows

**When to Use:**
- Designing user interfaces and user experiences
- Building design systems and component libraries
- Conducting accessibility audits
- Creating prototypes and wireframes

**Integration:** Use LSK Core for backend development, LSK_UX for frontend design

---

### **LSK-AIA** - AI Agent Development Framework
**Purpose:** Structured development of AI agents (chatbots, coding assistants, integration agents)

**Location:** `/lsk-aia/`

**Key Features:**
- 7-phase agent pipeline (Definition → Conversation Design → Integration → Implementation → Testing → Deployment → Optimization)
- Agent-specific templates (chat assistants, coding agents, integration agents)
- Conversation flow design and intent classification
- Multi-platform deployment patterns

**When to Use:**
- Building chatbots and conversational AI
- Creating coding assistants
- Developing system integration agents
- Implementing data analysis agents

**Integration:** Use LSK Core for the agent's backend systems, LSK-AIA for agent design

---

**Choose Your Framework:**
- **LSK Core v5.0** → General software development (APIs, services, applications)
- **LSK_UX v1.0** → UX/UI design and frontend development
- **LSK-AIA v1.0** → AI agent and conversational AI development

All frameworks share the same core methodology: Templates + Contracts + Recipes + Pipeline for structured AI-assisted development.

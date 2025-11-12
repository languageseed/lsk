# Contributing to LSK Core v5.0

Thank you for your interest in contributing to LSK Core v5.0! This framework thrives on **real-world experience** from developers like you.

---

## 🎯 Philosophy

LSK Core v5.0 is built on **evidence, not theory**. We value:

- **Real project experience** over academic speculation
- **Measured outcomes** over vague claims
- **Practical patterns** over perfect abstractions
- **Continuous improvement** over static perfection

---

## 🚀 How to Contribute

### **1. Share Quick Lessons (30 seconds)**

The fastest way to contribute is sharing what worked (or didn't):

```bash
# In the lessons-learned/ directory
echo "## [Pattern Name] - [What happened]

**Project:** [Your project type]
**Date:** $(date +%Y-%m-%d)

**What Worked:**
- [Specific insight]

**What Didn't:**
- [What to avoid]

**Impact:**
- [Measurable outcome if available]
" >> lessons-learned/$(date +%Y-%m)-community-insights.md
```

**Examples:**
- "Risk assessment saved us 2 weeks on API integration"
- "Spike-and-refine didn't work for our domain because..."
- "We adapted workspace organization by..."

---

### **2. Propose New Patterns (1-2 hours)**

If you've discovered a repeatable pattern:

1. **Document your experience:**
   - What problem does it solve?
   - When should it be used?
   - What's the measurable impact?
   - What project(s) validated it?

2. **Create a recipe or template:**
   - Follow existing format in `core/templates/recipes/`
   - Include concrete examples
   - Specify time estimates
   - Document expected ROI

3. **Submit a Pull Request:**
   - Use the template below
   - Reference your real-world usage
   - Include before/after metrics if possible

---

### **3. Improve Documentation (30 minutes - 2 hours)**

Documentation improvements we always welcome:

- **Clarity fixes:** Confusing sections, unclear examples
- **Additional examples:** More use cases, scenarios
- **Better organization:** Easier navigation, clearer structure
- **Error corrections:** Typos, broken links, outdated info

---

### **4. Enhance Tooling (2-8 hours)**

Tooling contributions:

- **Validation script improvements:** New checks, better output
- **Automation scripts:** Template generators, report builders
- **CI/CD integrations:** GitHub Actions, GitLab CI
- **Quality tools:** Linters, formatters, validators

---

## 📋 Contribution Guidelines

### **Before Contributing:**

✅ **Do:**
- Base contributions on real project experience
- Include measurable outcomes when possible
- Follow existing documentation format
- Test any scripts/tools before submitting
- Reference specific use cases

❌ **Don't:**
- Submit theoretical patterns without validation
- Make breaking changes to existing templates
- Add complexity without clear value
- Ignore existing naming conventions
- Submit without testing

---

### **Pull Request Process:**

1. **Fork the repository**
   ```bash
   git clone https://github.com/languageseed/lsk.git
   cd lsk
   git checkout -b feature/your-contribution-name
   ```

2. **Make your changes**
   - Follow existing file structure
   - Update relevant documentation
   - Add examples where helpful
   - Test any scripts/tools

3. **Document your changes**
   - Update `VERSION.yaml` if adding features
   - Add entry to `CHANGELOG.md`
   - Update `INDEX.md` if adding new files
   - Reference your real-world usage

4. **Submit Pull Request**
   - Clear title describing the change
   - Description of what problem it solves
   - Evidence from your project(s)
   - Any metrics or outcomes

5. **Respond to feedback**
   - Be open to discussion
   - Provide additional context if needed
   - Iterate based on maintainer input

---

## 🎓 Contribution Templates

### **New Pattern/Recipe Template:**

```markdown
# [Pattern Name] Recipe

## Problem Statement
[What problem does this solve?]

## When to Use
- [Specific scenario 1]
- [Specific scenario 2]

## When NOT to Use
- [Anti-patterns or wrong contexts]

## Time Investment
- [Estimated time to apply pattern]

## Expected ROI
- [Measurable benefit]

## Step-by-Step Process
1. [First step]
2. [Second step]
...

## Real-World Example
**Project:** [Your project type]
**Context:** [Situation]
**Outcome:** [Measurable result]

## Validation
- Tested on [N] projects
- Average time saved: [X]
- Success rate: [Y]%
```

---

### **Lesson Learned Template:**

```markdown
## [Pattern/Area] - [Brief Title]

**Date:** YYYY-MM-DD
**Project Type:** [e.g., "Multi-service API platform"]
**LSK Pattern Used:** [e.g., "Risk Assessment & PoC"]

### What Worked
- [Specific insight with context]
- [Measurable outcome if available]

### What Didn't Work
- [What to avoid]
- [Why it didn't work in your context]

### Recommendations
- [Actionable advice for others]

### Impact
- Time saved/lost: [estimate]
- Quality improvement: [if measurable]
- Would use again: Yes/No/Maybe
```

---

## 🔍 Review Process

All contributions go through review to ensure:

1. **Quality:** Clear, well-documented, tested
2. **Relevance:** Solves real problems
3. **Evidence:** Based on actual project experience
4. **Compatibility:** Works with existing framework
5. **Value:** Provides measurable benefit

**Timeline:**
- Initial review: 1-3 days
- Feedback/iteration: As needed
- Merge decision: 1-2 weeks

---

## 🌟 Recognition

Contributors are recognized in:

- `VERSION.yaml` for significant contributions
- `README.md` acknowledgments section
- Release notes for their contributions

We value **quality over quantity** - one well-validated pattern is worth more than ten untested ideas.

---

## 💡 Ideas We're Looking For

### **High Priority:**
- **Team collaboration patterns** - Multi-developer workflows
- **Cross-framework integration** - LSK Core + UX + AIA examples
- **Additional validation checks** - Quality gates and automated tests
- **Industry-specific adaptations** - Healthcare, finance, etc.

### **Medium Priority:**
- **Performance optimization patterns**
- **Security-focused workflows**
- **Legacy system integration approaches**
- **Accessibility-first development patterns**

### **Nice to Have:**
- **Visual diagrams** for existing patterns
- **Video tutorials** for quick start
- **IDE integrations** (VS Code, Cursor, etc.)
- **Template generators** (CLI tools)

---

## ❓ Questions?

**Before contributing:**
1. Read [QUICK_START.md](QUICK_START.md)
2. Review [EVOLUTION_GUIDE.md](EVOLUTION_GUIDE.md)
3. Check existing [Issues](https://github.com/languageseed/lsk/issues)

**Still have questions?**
- Open a [Discussion](https://github.com/languageseed/lsk/discussions)
- Check the [INDEX.md](INDEX.md) for relevant docs
- Review similar contributions in git history

---

## 🤝 Code of Conduct

### **Our Standards:**

**Positive behaviors:**
- Respectful of different experiences and perspectives
- Gracefully accepting constructive criticism
- Focusing on what's best for the community
- Showing empathy toward others

**Unacceptable behaviors:**
- Trolling, insulting/derogatory comments
- Public or private harassment
- Publishing others' private information
- Other unprofessional conduct

**Enforcement:**
Violations may result in temporary or permanent ban from the project.

---

## 📊 Success Metrics

Good contributions typically:

- ✅ Solve a real problem (documented)
- ✅ Have measurable impact (quantified)
- ✅ Are validated in practice (tested)
- ✅ Include clear documentation (examples)
- ✅ Follow existing patterns (consistent)

---

## 🎉 Thank You!

Every contribution makes LSK Core better. Whether it's:
- A 30-second lesson learned
- A comprehensive new pattern
- A documentation typo fix
- A validation script improvement

**Your real-world experience is valuable. Thank you for sharing it!**

---

**Let's build great software together.**

For detailed evolution guidance, see [EVOLUTION_GUIDE.md](EVOLUTION_GUIDE.md)


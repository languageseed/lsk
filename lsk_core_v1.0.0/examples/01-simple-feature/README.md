# Example 1: Simple Feature Development

## Scenario Overview

**Goal:** Add user authentication (login/logout) to an existing REST API  
**Complexity:** Beginner  
**Time:** ~1 hour  
**Patterns Used:** Basic Context Pack, Phase Plan

---

## Context

You're working on a Node.js/Express API that currently has no authentication. You need to add:
- User login endpoint (POST `/auth/login`)
- User logout endpoint (POST `/auth/logout`)
- JWT token generation
- Basic password validation

---

## LSK Core v1.0 Usage

### Step 1: Create Context Pack

See `context-pack.yaml` for the filled template showing:
- Clear objective and acceptance criteria
- Code targets (auth routes, middleware)
- Success criteria (what "done" looks like)

### Step 2: Create Phase Plan

See `phase-plan.yaml` for tracking:
- Definition phase (requirements clarity)
- Implementation phase (coding)
- Testing phase (validation)

### Step 3: Checkpoints

As you progress, create checkpoints:
- `checkpoint-01-requirements.md` - After defining requirements
- `checkpoint-02-implementation.md` - After coding
- `checkpoint-03-testing.md` - After validation

---

## Example Conversation with AI

```markdown
I'm using LSK Core v1.0 for structured development. 

Here's my context pack for adding authentication to my API:

[Paste context-pack.yaml content]

Please help me:
1. Review the approach
2. Identify any missing requirements
3. Suggest implementation steps

Once we agree on the approach, I'll ask you to help with implementation.
```

---

## Key Learnings

### What Worked Well ✅

1. **Clear Acceptance Criteria**
   - Having specific, testable criteria prevented scope creep
   - AI understood exactly what "done" meant

2. **Code Targets**
   - Specifying exact files made AI suggestions more focused
   - Less time spent on "where should this go?"

3. **Phased Approach**
   - Breaking into phases prevented overwhelming conversation
   - Could checkpoint and resume easily

### What to Avoid ❌

1. **Vague Requirements**
   - Don't say "add auth" - specify exact endpoints, behavior
   
2. **Skipping Context**
   - Don't jump to "write the code" without establishing context

3. **No Success Criteria**
   - Without clear criteria, hard to know when you're done

---

## Time Breakdown

- **Context Pack Creation:** 15 minutes
- **AI Conversation (Planning):** 10 minutes
- **Implementation with AI:** 25 minutes
- **Testing & Validation:** 10 minutes
- **Total:** ~60 minutes

**Without LSK:** Typically 90-120 minutes with multiple back-and-forth iterations.

**Time Saved:** ~30-60 minutes

---

## Files in This Example

- `README.md` - This file
- `context-pack.yaml` - Filled context pack for auth feature
- `phase-plan.yaml` - Phase tracking document
- `checkpoint-01-requirements.md` - After requirements defined
- `checkpoint-02-implementation.md` - After implementation
- `artifacts/` - Sample code (before/after)

---

## How to Adapt This

### For Your Feature:

1. **Copy `context-pack.yaml`**
   ```bash
   cp examples/01-simple-feature/context-pack.yaml my-feature.yaml
   ```

2. **Modify for Your Needs**
   - Change objective to your feature
   - Update acceptance criteria
   - Specify your code targets

3. **Use with AI**
   - Share context pack
   - Discuss approach first
   - Then implement

4. **Track Progress**
   - Use checkpoints at each milestone
   - Update phase plan as you progress

---

## Next Steps

After completing this example:

1. **Try with your own feature** - Apply the pattern to real work
2. **Experiment with recipes** - Try `requirements-gathering.recipe.md`
3. **Explore other patterns** - When ready, try risk assessment or spike-and-refine

---

## Questions?

**"Do I need all these files for a simple feature?"**
→ No! Start with just the context pack. Add phase plan and checkpoints if helpful.

**"Can I modify the context pack?"**
→ Absolutely! It's a template - adapt to your needs.

**"What if my feature is more complex?"**
→ Check out other examples like `02-risk-assessment-poc` or `04-multi-service`.

---

**Happy coding! 🚀**


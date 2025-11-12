# LSKv4 Recipe Cards
Quick workflows for common development tasks.

## 🐛 Bug Fix Recipe
**When**: Fixing a specific bug or issue
**Time**: 15-30 minutes

1. **Setup Context**
   ```yaml
   # Copy context.pack.yaml, fill:
   objective:
     problem_statement: "Fix bug: [brief description]"
     constraints: ["Must not break existing functionality"]
     acceptance_criteria: ["Bug is resolved", "Tests pass", "No regressions"]
   ```

2. **AI Prompt**
   ```
   I need to fix a bug. Here's my context pack: [paste yaml]
   
   Please analyze the issue and suggest a fix using prompt "refactor-001".
   Focus on minimal changes and proper testing.
   ```

3. **Track Progress**
   - Skip to `implementation` phase (mode: "lenient")
   - Create checkpoint when fix is complete

---

## ✨ New Feature Recipe  
**When**: Building a new feature from scratch
**Time**: 2-4 hours

1. **Follow Full Pipeline**
   - Definition → Validation → Implementation → Integration → UAT → Certify

2. **Key Context Pack Fields**
   ```yaml
   objective:
     problem_statement: "Build [feature] to enable [user value]"
   prompt_inputs:
     primary_prompt_id: "service-gen-001" # or component-gen-001
   ```

3. **Phase Checkpoints**
   - Definition: Interface design and contracts
   - Validation: Stubs and test cases
   - Implementation: Working code
   - Integration: Connected to system
   - UAT: User acceptance testing
   - Certify: Production ready

---

## 🔄 Refactor Recipe
**When**: Improving existing code structure
**Time**: 1-2 hours

1. **Context Focus**
   ```yaml
   context:
     code_targets:
       - path: "src/messy-module.ts"
         reason: "Needs cleanup and better patterns"
   prompt_inputs:
     primary_prompt_id: "refactor-001"
   ```

2. **AI Prompt**
   ```
   I need to refactor existing code. Context: [paste yaml]
   
   Apply pattern "service-001" and approach "component-driven-001".
   Keep functionality identical, improve structure.
   ```

3. **Validation**
   - Run existing tests first
   - Refactor in small steps
   - Validate tests still pass

---

## 📝 Quick Documentation
**When**: Need docs for existing code
**Time**: 30 minutes

1. **Simple Context**
   ```yaml
   objective:
     problem_statement: "Document [component/service] for team use"
   prompt_inputs:
     primary_prompt_id: "doc-gen-001"
   ```

2. **AI Prompt**
   ```
   Generate documentation for this code: [paste code]
   
   Include: purpose, usage examples, API reference.
   Keep it concise and practical.
   ```

---

## 🧪 Add Tests Recipe
**When**: Need test coverage for existing code
**Time**: 45 minutes

1. **Test-Focused Context**
   ```yaml
   prompt_inputs:
     primary_prompt_id: "component-test-001"
   outputs:
     review_checklist:
       - "Happy path covered"
       - "Error cases tested"  
       - "Edge cases handled"
   ```

2. **AI Prompt**
   ```
   Add comprehensive tests for: [paste code]
   
   Cover success cases, error handling, and edge cases.
   Use testing best practices for [your testing framework].
   ```

---

## Quick Tips
- **Start small**: Use recipes for focused tasks
- **Adapt prompts**: Replace prompt IDs with ones that fit your stack
- **Skip phases**: Use `mode: "lenient"` for simple tasks
- **Iterate**: Run multiple small recipes rather than one large one

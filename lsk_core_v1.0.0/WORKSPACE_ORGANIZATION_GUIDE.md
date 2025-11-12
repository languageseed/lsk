# LSK Core v5.0 Workspace Organization Guide
## Specification vs Implementation: Managing Cognitive Load in Complex Projects

---

## The Problem

```
Mixed workspace:
project/
├── requirements.md          ← Planning
├── architecture.md          ← Planning  
├── src/
│   ├── feature.ts          ← Code
│   ├── design-notes.md     ← Planning?
│   └── api-spec.md         ← Planning?
├── tests/                   ← Code
└── README.md                ← ???

Problems:
- Where do I focus when coding? (src/, but also design-notes.md?)
- Where are requirements? (Scattered across multiple files)
- What does AI focus on? (Everything? Confused context)
- Context switching: Planning → Code → Planning → Code (exhausting)
```

---

## The Solution

```
Separated workspace:
project/
├── spec/                    ← WHAT and WHY (planning focus)
│   ├── requirements/
│   ├── architecture/
│   ├── decisions/
│   └── risks/
│
├── implementation/          ← HOW (execution focus)
│   ├── src/
│   ├── tests/
│   ├── docs/               ← Code docs only
│   └── config/
│
└── .lsk/                    ← Bridge between them
    ├── context-packs/      ← Links spec + implementation
    ├── checkpoints/        ← Progress tracking
    └── phase-plans/        ← Which folder to work in

Benefits:
✅ Clear mental context (one folder = one mindset)
✅ Focus (code without distraction from specs)
✅ AI clarity (knows whether to think about WHAT or HOW)
✅ Clean handoffs (finish spec/ → start implementation/)
```

---

## Folder Purposes

### 📋 spec/ - Specification Folder
**Purpose:** Everything about WHAT to build and WHY

**Mindset:** Product thinking, requirements, planning, architecture

**Contains:**
```
spec/
├── requirements/           ← What needs to be built
│   ├── user-stories.md
│   ├── acceptance-criteria.md
│   ├── constraints.md
│   └── success-metrics.md
│
├── architecture/           ← How it should be designed
│   ├── system-design.md
│   ├── component-diagram.md
│   ├── data-model.md
│   └── technology-choices.md
│
├── decisions/              ← Why choices were made
│   ├── adr-001-database.md    (Architecture Decision Records)
│   ├── adr-002-framework.md
│   └── trade-offs.md
│
├── risks/                  ← What could go wrong
│   ├── risk-assessment.yaml
│   ├── poc-plans.md
│   └── poc-results.md
│
└── acceptance/             ← How to validate success
    ├── test-scenarios.md
    ├── edge-cases.md
    └── uat-plan.md
```

**When to work here:**
- ✅ Defining requirements
- ✅ Designing architecture
- ✅ Assessing risks
- ✅ Making technical decisions
- ✅ Planning acceptance tests

**When NOT to work here:**
- ❌ Writing code
- ❌ Debugging
- ❌ Performance optimization
- ❌ Implementation details

---

### ⚡ implementation/ - Implementation Folder
**Purpose:** Everything about HOW to build it

**Mindset:** Engineering execution, code, tests, optimization

**Contains:**
```
implementation/
├── src/                    ← Application code
│   └── (No requirements docs!)
│
├── tests/                  ← Test code
│   ├── unit/
│   ├── integration/
│   └── e2e/
│
├── docs/                   ← Code documentation ONLY
│   ├── api-reference.md       (Generated from code)
│   ├── code-guide.md          (How to work with code)
│   └── setup.md               (Development setup)
│
└── config/                 ← Configuration
    ├── dev.env
    ├── prod.env
    └── docker-compose.yml
```

**When to work here:**
- ✅ Writing code
- ✅ Debugging
- ✅ Testing
- ✅ Refactoring
- ✅ Performance optimization

**When NOT to work here:**
- ❌ Defining requirements
- ❌ Making architectural decisions
- ❌ Planning features
- ❌ Risk assessment

---

### 🔗 .lsk/ - Bridge Folder
**Purpose:** Connect specification to implementation

**Contains:**
```
.lsk/
├── context-packs/          ← Link spec + implementation for AI
│   └── feature-x.yaml:
│       requirements_ref: "spec/requirements/feature-x.md"
│       code_targets: ["implementation/src/feature-x/"]
│       current_folder: "implementation"
│
├── checkpoints/            ← Track progress in both areas
│   └── feature-x-checkpoint.md:
│       spec_status: "Complete"
│       impl_status: "In progress"
│       current_folder: "implementation/src/"
│
└── phase-plans/            ← Which folder for which phase
    └── feature-x-plan.yaml:
        current_phase: "implementation"
        current_folder: "implementation/src/"
        completed: ["spec/requirements/", "spec/architecture/"]
```

---

## Workflow: Moving Between Folders

### Phase 1: Specification (Work in spec/)

```yaml
Location: spec/
Duration: 20-40% of project time
Activities:
  - Define requirements → spec/requirements/
  - Design architecture → spec/architecture/
  - Assess risks → spec/risks/
  - Plan PoCs → spec/risks/
  - Document decisions → spec/decisions/

AI Context:
  - Share spec/ files only
  - Don't share implementation/ yet
  - Focus prompts on WHAT and WHY
  - Example: "Review this architecture design..."

Deliverables:
  - ✅ Clear requirements
  - ✅ Validated architecture
  - ✅ Risk mitigation plans
  - ✅ Decision records

Handoff Criteria (when to move to implementation/):
  - Requirements clear and approved
  - Architecture designed and reviewed
  - Critical risks validated via PoCs
  - Team aligned on approach
```

---

### Phase 2: Implementation (Work in implementation/)

```yaml
Location: implementation/
Duration: 50-70% of project time
Activities:
  - Write code → implementation/src/
  - Write tests → implementation/tests/
  - Debug issues → implementation/src/ + tests/
  - Optimize performance → implementation/src/
  - Document code → implementation/docs/

AI Context:
  - Share implementation/ code
  - Reference spec/ for requirements (but don't mix)
  - Focus prompts on HOW
  - Example: "Review this implementation..."

Deliverables:
  - ✅ Working code
  - ✅ Passing tests
  - ✅ Code documentation
  - ✅ Configuration

Handoff Criteria (when to move to validation):
  - Code complete
  - Tests passing
  - Ready for integration testing
```

---

### Phase 3: Validation (Work in both)

```yaml
Location: Both spec/ and implementation/
Duration: 10-20% of project time
Activities:
  - Compare implementation/ to spec/requirements/
  - Run tests from spec/acceptance/
  - Validate edge cases from spec/risks/
  - UAT testing

AI Context:
  - Share both spec/ and implementation/
  - Focus on validation
  - Example: "Does this implementation meet the specification?"

Deliverables:
  - ✅ Validation report
  - ✅ Acceptance sign-off
  - ✅ Issue list (if any)

Completion Criteria:
  - Implementation meets all requirements from spec/
  - All acceptance criteria from spec/acceptance/ passed
  - Edge cases from spec/risks/ handled
```

---

## AI Collaboration Strategy

### When Working in spec/

**Prompt Format:**
```
I'm in specification mode, working in spec/[subfolder].

[Share spec/ content]

Focus on requirements, architecture, and planning.
We'll handle implementation later in implementation/.

Help me with: [specific planning task]
```

**Example:**
```
I'm in specification mode, working in spec/architecture/.

Here's the system design I'm working on:
[paste spec/architecture/system-design.md]

Focus on:
- Component boundaries
- Integration patterns
- Scalability considerations

Help me identify any architectural issues or improvements.
```

**AI Response Focus:**
- WHAT needs to be built
- WHY certain decisions make sense
- Design patterns and principles
- Risk identification
- NOT implementation details

---

### When Working in implementation/

**Prompt Format:**
```
I'm in implementation mode, working in implementation/[subfolder].

[Share implementation/ code]

The requirements are defined in spec/ (can reference if needed).
Focus on code quality, tests, and implementation.

Help me with: [specific coding task]
```

**Example:**
```
I'm in implementation mode, working in implementation/src/chat/.

Here's the WebSocket server code:
[paste code]

The requirements are in spec/requirements/chat-feature.md.

Focus on:
- Code quality and patterns
- Performance optimization
- Error handling

Help me improve this implementation.
```

**AI Response Focus:**
- HOW to implement efficiently
- Code quality and patterns
- Performance and optimization
- Testing strategies
- NOT requirements definition

---

### When Validating (Both folders)

**Prompt Format:**
```
I'm validating implementation against specification.

Specification:
[Share relevant spec/ files]

Implementation:
[Share relevant implementation/ files]

Does the implementation meet the specification?
What gaps or issues exist?
```

---

## Real-World Example

### Project: Real-Time Chat Feature

#### Week 1: Specification (spec/)

**Monday-Tuesday: Requirements**
```
Working in: spec/requirements/
Created:
  - chat-feature.md (user stories, acceptance criteria)
  - constraints.md (tech constraints, timeline)

AI Conversations:
  - "Review these user stories for completeness"
  - "Identify edge cases I might have missed"
  
Focus: WHAT we're building
No distractions: No code to think about
```

**Wednesday: Architecture**
```
Working in: spec/architecture/
Created:
  - websocket-design.md
  - component-diagram.md
  - integration-points.md

AI Conversations:
  - "Evaluate WebSocket vs SSE vs polling approaches"
  - "Review this component design for scalability"
  
Focus: HOW it should be designed (high level)
No distractions: Still no code to think about
```

**Thursday: Risk Assessment**
```
Working in: spec/risks/
Created:
  - risk-assessment.yaml
  - poc-websocket-scaling.md

AI Conversations:
  - "Identify risks in this WebSocket approach"
  - "Design minimal PoC to validate scaling"
  
Focus: What could go wrong
No distractions: Pure risk analysis
```

**Friday: Decisions & PoC**
```
Working in: spec/decisions/ + spec/risks/
Created:
  - adr-001-websocket-choice.md
  - poc-results.md (PoC validated approach works)

Result: Spec complete, ready to implement
```

**Handoff: spec/ → implementation/**
- ✅ Requirements clear
- ✅ Architecture validated
- ✅ Risks mitigated
- 👉 Now focus shifts to implementation/

---

#### Week 2-3: Implementation (implementation/)

**Week 2: Core Implementation**
```
Working in: implementation/src/chat/
Created:
  - websocket-server.ts
  - message-handler.ts
  - connection-manager.ts

AI Conversations:
  - "Review this WebSocket server implementation"
  - "Optimize this message handler for performance"
  - "Help debug this connection issue"
  
Focus: Writing code, solving implementation problems
No distractions: Requirements already clear in spec/
Reference: Look at spec/ when needed, but don't work there
```

**Week 3: Testing**
```
Working in: implementation/tests/chat/
Created:
  - websocket.test.ts
  - integration.test.ts
  - e2e.test.ts

AI Conversations:
  - "Review test coverage"
  - "Help write tests for edge case from spec/risks/"
  
Focus: Test quality, coverage
No distractions: Still focused on implementation/
```

**Result: Implementation complete, ready to validate**

---

#### Week 3 Friday: Validation (both)

```
Working in: Both spec/ and implementation/
Activity: Comparing implementation to specification

AI Conversation:
"Validate implementation against spec:

Requirements (spec/requirements/chat-feature.md):
[paste requirements]

Implementation (implementation/src/chat/):
[paste code structure]

Test results (implementation/tests/):
[paste test summary]

Does implementation meet all requirements?
Are there gaps?"

Result:
- ✅ All requirements met
- ✅ Edge cases handled
- ✅ Tests passing
- Feature complete!
```

---

## Benefits Realized

### 1. Better Focus
**Before (mixed):**
```
Try to code → See requirements.md → Read it → Realize spec changed → 
Update code → See architecture.md → Read it → Get confused → Context switch
```

**After (separated):**
```
Work in implementation/src/ → Focus on code only → 
If need requirement → Quick glance at spec/ → Back to code
Clean mental context
```

### 2. Clearer AI Conversations
**Before (mixed):**
```
User: "Help with this project"
[Shares mix of requirements, code, tests, docs]

AI: [Confused about whether to focus on requirements or implementation]
```

**After (separated):**
```
User: "I'm in implementation mode, help optimize this code"
[Shares implementation/src/ only]

AI: [Focused response about code quality, no confusion]
```

### 3. Better Collaboration
**Before (mixed):**
```
Product Manager: "I updated requirements"
- Where? (Could be anywhere)
- Did code get updated too? (Mixed in)
- Confusion
```

**After (separated):**
```
Product Manager: "I updated spec/requirements/feature-x.md"
Engineer: "Thanks! I'll update implementation/ based on new spec/"
Clear separation of concerns
```

---

## Tips for Success

### ✅ Do This:

1. **Complete work in one folder before switching**
   ```
   ✅ Finish spec/requirements/ fully
   Then: Move to spec/architecture/
   Then: Move to implementation/
   
   ❌ Jump back and forth constantly
   ```

2. **Tell AI which folder you're in**
   ```
   ✅ "I'm working in spec/architecture/..."
   ✅ "I'm working in implementation/src/..."
   
   ❌ Just share files without context
   ```

3. **Use .lsk/ as the bridge**
   ```
   ✅ Link spec/ to implementation/ via context packs
   ✅ Track which folder you're working in via phase plans
   
   ❌ Copy content from spec/ to implementation/
   ```

4. **Reference spec/ from implementation/, don't duplicate**
   ```
   ✅ "Requirements defined in spec/requirements/feature-x.md"
   
   ❌ Copy requirements into implementation/docs/
   ```

### ❌ Don't Do This:

1. **Don't mix planning docs into implementation/**
   ```
   ❌ implementation/src/feature-requirements.md
   ✅ spec/requirements/feature.md
   ```

2. **Don't put code in spec/**
   ```
   ❌ spec/prototype/test-code.ts
   ✅ Create separate prototype/ or use spike approach
   ```

3. **Don't duplicate information**
   ```
   ❌ Same architectural decision in both spec/ and implementation/docs/
   ✅ Decision in spec/decisions/, referenced from implementation/
   ```

---

## When This Approach Works Best

### ✅ Great For:

- **Complex projects** (cognitive load needs management)
- **Team collaboration** (clear ownership: Product → spec/, Engineering → implementation/)
- **Long-running projects** (spec and implementation evolve at different rates)
- **Unclear requirements** (need to iterate on spec/ before committing to code)
- **High-stakes projects** (need clear validation that implementation meets spec)

### ⚠️ May Be Overkill For:

- **Simple tasks** (structure overhead > benefit)
- **Rapid prototypes** (spec and implementation evolving together in tight loop)
- **Solo, familiar work** (you already have the mental model)

**Alternative for simple cases:** Single folder with clear file naming (`SPEC-feature.md`, `feature.ts`)

---

## Integration with LSKv4.2

### Phase Plan Includes Folder

```yaml
# .lsk/phase-plans/feature-x.yaml

current_phase: "implementation"
current_folder: "implementation/src/"  # ← Explicit folder guidance

phases:
  - name: "specification"
    folder: "spec/"                    # ← Where to work
    status: "complete"
    
  - name: "implementation"
    folder: "implementation/"          # ← Where to work
    status: "in_progress"
```

### Context Pack References Both

```yaml
# .lsk/context-packs/feature-x.yaml

# Specification (WHAT)
requirements_ref: "spec/requirements/feature-x.md"
architecture_ref: "spec/architecture/component-y.md"

# Implementation (HOW)
code_targets:
  - path: "implementation/src/feature-x/"
    
# Current Focus
current_folder: "implementation/src/"
focus_mode: "implementation"  # vs "specification"
```

---

## Quick Reference

| Activity | Folder | AI Focus | Mindset |
|----------|--------|----------|---------|
| Define requirements | spec/requirements/ | WHAT to build | Product thinking |
| Design architecture | spec/architecture/ | HOW to design | System design |
| Assess risks | spec/risks/ | What could fail | Risk analysis |
| Make decisions | spec/decisions/ | WHY we chose X | Trade-off analysis |
| Write code | implementation/src/ | Code quality | Engineering |
| Write tests | implementation/tests/ | Test coverage | Quality assurance |
| Debug | implementation/ | Fix issues | Problem-solving |
| Validate | spec/ + implementation/ | Does impl meet spec? | Verification |

---

## Summary

**The Principle:**
> Physical separation creates mental separation

**The Practice:**
- spec/ = WHAT and WHY (planning focus)
- implementation/ = HOW (execution focus)
- .lsk/ = Bridge between them

**The Benefit:**
- Better focus (one context at a time)
- Less cognitive load (no context switching)
- Clearer AI conversations (focused prompts)
- Easier collaboration (clear ownership)

**The Result:**
- Faster development (less mental fatigue)
- Higher quality (better focus)
- Cleaner codebase (no mixed concerns)

---

**"For complex builds, keeping specification very separate from implementation works a lot better than all in one. Focus code activities in implementation folders and don't get distracted with other files."**

This organizational approach makes that separation explicit, systematic, and effective.


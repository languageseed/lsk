# 🎯 Risk Assessment & Proof of Concept Recipe
**Purpose**: Identify and validate high-risk assumptions before committing to full implementation  
**Time**: 30 minutes assessment + 4-8 hours per PoC  
**When to Use**: Before starting any project with significant uncertainty

---

## Why This Matters

**The Problem:**
- Teams spend weeks building the wrong thing
- Critical flaws discovered late in development
- Assumptions turn out to be wrong after significant investment

**The Solution:**
- Identify high-risk areas upfront (30 minutes)
- Validate assumptions with lean PoCs (4-8 hours each)
- Fail fast and pivot early if needed

**Real Example from Conversations:**
In the Pulp debugging conversation (113K tokens, many failed attempts), the breakthrough came when the user questioned the fundamental approach: "Is the metadata on PyPI's JSON API?" This insight could have been validated in 30 minutes at the start instead of after hours of failed patches.

---

## The Recipe

### 🔍 Phase 1: Risk Identification (30 minutes)

**Step 1: List What You're Uncertain About**

**AI Prompt:**
```
I'm planning to build [project description].

Help me identify the highest-risk/highest-uncertainty areas by analyzing:

1. What technical assumptions am I making?
2. What could cause this project to fail?
3. What aspects have I never built before?
4. Where could performance/scalability be an issue?
5. What integration points are uncertain?

For each risk, rate:
- Likelihood: High/Medium/Low
- Impact if wrong: Critical/High/Medium/Low
- Current confidence: High/Medium/Low
```

**Example Conversation:**
```
User: "I'm planning to build a real-time collaborative document editor 
with WebSocket sync and operational transforms for conflict resolution."

AI: "Here are the highest-risk areas I see:

1. CRITICAL RISK: Conflict Resolution
   - Assumption: Operational transforms will work for your use case
   - Uncertainty: You haven't implemented OT before
   - Impact if wrong: Core functionality breaks
   - Confidence: Low

2. HIGH RISK: WebSocket Scaling
   - Assumption: Node.js can handle 1000+ concurrent WebSocket connections
   - Uncertainty: Unknown performance under load
   - Impact if wrong: Major architecture change needed
   - Confidence: Medium

3. MEDIUM RISK: State Synchronization
   - Assumption: You can keep clients in sync with <100ms latency
   - Uncertainty: Network conditions, server load
   - Impact if wrong: Poor user experience
   - Confidence: Medium

Would you like me to suggest PoCs to validate these?"
```

---

**Step 2: Prioritize Risks by Criticality**

**Decision Tree:**
```
For each risk, ask:

1. If this doesn't work, does the project fail?
   YES → CRITICAL - Must validate before proceeding
   NO → Continue to question 2

2. If this doesn't work, is major rework needed?
   YES → HIGH - Should validate early
   NO → Continue to question 3

3. If this doesn't work, are there easy alternatives?
   YES → MEDIUM - Can validate during development
   NO → HIGH - Should validate early
```

**Prioritization Output:**
```markdown
## Risk Priority

### CRITICAL (Must validate before proceeding)
1. [Risk] - Blocks: [what it blocks] - Confidence: [Low/Med/High]

### HIGH (Should validate early)
2. [Risk] - Affects: [what it affects] - Confidence: [Low/Med/High]

### MEDIUM (Can validate during development)
3. [Risk] - Impact: [description] - Confidence: [Low/Med/High]
```

---

### 🧪 Phase 2: Design Lean PoCs (15 minutes per PoC)

**Step 3: Design Minimal Validation Experiments**

**AI Prompt for Each Critical Risk:**
```
Help me design a minimal proof of concept to validate this assumption:

Assumption: [What you're assuming to be true]
Risk if wrong: [Impact on project]
Current confidence: Low/Medium/High
Time budget: 4-8 hours maximum

Design the SMALLEST experiment that could:
1. Prove this assumption is correct, OR
2. Prove this assumption is wrong

Focus on:
- What's the absolute minimum to test the hypothesis?
- What can we skip entirely?
- What would success look like?
- What would failure look like?
- How would we measure the results?
```

**Example Conversation:**
```
User: "Design a PoC to validate that operational transforms work for 
our document editor use case. Time budget: 8 hours."

AI: "Here's a minimal PoC:

**Question to Answer:** Can we implement basic OT for text in 8 hours?

**Minimal Scope:**
BUILD:
- Two browser windows editing the same text buffer
- Simple insert/delete operations only
- Basic OT algorithm (transformation functions)
- WebSocket for message passing

SKIP:
- ✗ Formatting/styling
- ✗ Undo/redo
- ✗ Persistence/database
- ✗ Authentication
- ✗ Production error handling
- ✗ Cursor synchronization
- ✗ Multiple document support

**Success Criteria:**
- Both windows can type simultaneously
- Text merges correctly without corruption
- No visible race conditions in 10 minutes of testing

**Failure Criteria:**
- Text becomes corrupted or desynchronized
- Implementation takes >8 hours
- OT logic too complex to understand/maintain

**Implementation Plan (8 hours):**
1. Hour 1-2: Research OT basics, choose simple algorithm
2. Hour 3-4: Implement transform functions
3. Hour 5-6: Build minimal WebSocket sync
4. Hour 7-8: Test, document findings

**Exit Decision:**
- If SUCCESS → Proceed with OT approach, now understand implementation
- If FAILURE → Consider CRDT or simpler locking approach
- If INCONCLUSIVE → Extend PoC with more realistic scenarios"
```

---

**Step 4: Define Clear Exit Criteria**

**PoC Scorecard Template:**
```yaml
poc_name: "[Name]"
time_budget: "[Hours]"

success_criteria:
  # Specific, measurable criteria
  - "[Criterion 1]"
  - "[Criterion 2]"
  
failure_criteria:
  # Clear signs this approach won't work
  - "[Criterion 1]"
  - "[Criterion 2]"

measurements:
  # What will you measure?
  - metric: "[Metric name]"
    target: "[Target value]"
    tool: "[How to measure]"

exit_decision:
  if_success: "[What you'll do next]"
  if_failure: "[Alternative approach]"
  if_inconclusive: "[How to get clarity]"
```

---

### ⚡ Phase 3: Execute PoCs (4-8 hours per PoC)

**Step 5: Time-Boxed Implementation**

**Implementation Discipline:**
```markdown
## PoC Execution Rules

1. **Strict Time Box**
   - Set timer for allocated hours
   - STOP when time expires, even if incomplete
   - Document what you learned, even if unfinished

2. **Ruthless Scope Cutting**
   - If running out of time, cut features, don't extend time
   - Only build what's needed to answer the core question
   - Resist temptation to "polish" or "make it production-ready"

3. **Focus on the Question**
   - Every line of code should serve the validation goal
   - If you're building something not needed for validation, STOP

4. **Document As You Go**
   - Note assumptions as you discover them
   - Record measurements/observations
   - Capture "aha moments" and surprises
```

**AI Collaboration During PoC:**
```
"I'm executing PoC for [goal]. I've built [what you built so far].

Current observations:
- [Observation 1]
- [Observation 2]

Questions:
- [Question about unexpected behavior]
- [Question about alternative approaches]

Should I continue this path or pivot?"
```

---

**Step 6: Measure and Document Results**

**PoC Results Template:**
```markdown
## PoC Results: [Name]

### Execution Summary
- Time spent: [Actual hours]
- Approach: [Brief description]
- Scope achieved: [What you built]
- Scope cut: [What you skipped]

### Measurements
| Metric | Target | Actual | Pass/Fail |
|--------|--------|--------|-----------|
| [Metric 1] | [Target] | [Result] | ✅/❌ |
| [Metric 2] | [Target] | [Result] | ✅/❌ |

### Key Findings
✅ **What Worked:**
- [Finding 1]
- [Finding 2]

❌ **What Didn't Work:**
- [Finding 1]
- [Finding 2]

💡 **Surprises/Insights:**
- [Unexpected finding 1]
- [Unexpected finding 2]

### Assumptions Validated
- ✅ [Assumption] - CONFIRMED
- ❌ [Assumption] - INVALIDATED
- ❓ [Assumption] - INCONCLUSIVE

### Decision
**Recommendation:** [Proceed / Pivot / Extend PoC]

**Reasoning:** [Why this recommendation]

**Next Steps:**
1. [Immediate action]
2. [Follow-up if needed]
```

---

### 🎯 Phase 4: Make Go/No-Go Decision (15 minutes)

**Step 7: Evaluate Results and Decide**

**Decision Framework:**

```
For each PoC, evaluate:

1. Did it answer the core question?
   ☐ Yes - Proceed to decision criteria
   ☐ No - Extend PoC or try different approach

2. Check Success Criteria:
   ☐ All criteria met → HIGH CONFIDENCE - Proceed
   ☐ Most criteria met → MEDIUM CONFIDENCE - Proceed with caution
   ☐ Few criteria met → LOW CONFIDENCE - Consider alternatives

3. Check Failure Criteria:
   ☐ None met → Safe to proceed
   ☐ Some met → YELLOW FLAG - Address issues
   ☐ Multiple met → RED FLAG - Pivot to alternative

4. Overall Assessment:
   ☐ Validated: Proceed with full implementation
   ☐ Concerns: Address issues, possibly extend PoC
   ☐ Invalidated: Pivot to alternative approach
   ☐ Inconclusive: Design better PoC or gather more data
```

**AI Prompt for Decision Support:**
```
Review these PoC results and help me make a go/no-go decision:

[Paste PoC results]

Questions:
1. Does this validate or invalidate the approach?
2. What's the confidence level?
3. What are the biggest remaining risks?
4. Should I proceed, pivot, or extend the PoC?
5. If pivoting, what alternative approaches should I consider?
```

---

## 📊 Real-World Examples

### Example 1: GPU Optimization (From Actual Conversation)

**Situation:** Ollama container running on CPU instead of GPU

**Risk Assessment (Should Have Done):**
```yaml
assumption: "Container will use GPU automatically"
confidence: "Medium"
risk_if_wrong: "43x performance degradation"
validation: "Check GPU utilization before deploying"
time_to_validate: "5 minutes"
```

**What Actually Happened:**
- Deployed without validation
- Discovered issue after 3 days of poor performance
- Simple check (`nvidia-smi`) would have caught this immediately

**Lesson:** Even 5-minute validation checks can prevent multi-day issues

---

### Example 2: PyPI Metadata Extraction (From Actual Conversation)

**Situation:** Extracting metadata from Python wheel files

**What Happened:**
- Assumption: "Must extract metadata from wheel files"
- Spent 113K tokens (many hours) trying to fix extraction bugs
- User insight: "Is the metadata on PyPI's JSON API?"
- Alternative validated in 30 minutes

**Better Approach (Risk Assessment):**
```yaml
high_risk_areas:
  - area: "Wheel file metadata extraction"
    uncertainty: "Not sure if tempfile extraction will work reliably"
    assumptions:
      - "Must extract from files"
      - "No alternative metadata source"
    
    poc_plan:
      question: "What's the most reliable way to get package metadata?"
      time_budget: "2 hours"
      approaches_to_test:
        - "Extract from wheel files"
        - "Fetch from PyPI JSON API"
        - "Query PyPI database directly"
      success_criteria: "Get complete metadata for 10 test packages"
```

**Result:** 2-hour PoC would have found JSON API immediately, saving days of debugging

---

### Example 3: WebSocket Scaling (Hypothetical)

**Initial Assessment:**
```yaml
assumption: "Node.js WebSocket server can handle 1000 concurrent connections"
confidence: "Low - never tested at this scale"
risk_if_wrong: "Critical - entire architecture needs rework"
validation_priority: "MUST DO before proceeding"
```

**PoC Design:**
```yaml
question: "What's the connection limit before degradation?"
time_budget: "4 hours"

minimal_scope:
  build:
    - "Simple echo server"
    - "Connection counter"
    - "Latency measurement"
  skip:
    - "Authentication"
    - "Message persistence"
    - "Error recovery"
    - "Production features"

success_criteria:
  - "Handles 1000 connections with <200ms latency"
  - "Memory usage remains stable"
  - "No connection drops under load"

failure_criteria:
  - "Degradation below 500 connections"
  - "Memory leak detected"
  - "Frequent connection drops"
```

**PoC Results (Hypothetical):**
```
Time spent: 3.5 hours
Connections tested: Up to 2000
Results:
  - ✅ Handles 1500 connections smoothly
  - ✅ Latency stays <150ms up to 1200 connections
  - ⚠️ Degradation starts at 1500 connections
  - ❌ Memory grows continuously (potential leak)

Decision: Proceed with WebSocket but:
  - Set connection limit at 1200 per server
  - Investigate memory growth
  - Plan for horizontal scaling at 1000 users
```

---

## 🚨 Common Patterns & Anti-Patterns

### ✅ Good Risk Assessment Patterns

**Pattern: "Spike Before Story"**
```
Before implementing feature:
1. Identify highest-risk aspect
2. Spend 4 hours proving/disproving it works
3. Then decide on implementation approach
```

**Pattern: "Fail Fast, Learn Quick"**
```
Design PoCs that can FAIL:
- If PoC can't fail, it's not testing anything
- Celebrate failures - they save weeks of wasted effort
- Document failures as thoroughly as successes
```

**Pattern: "Question Assumptions Explicitly"**
```
Ask AI: "What assumptions am I making that could be wrong?"
List all assumptions, validate the riskiest ones
```

**Pattern: "Time-Boxed Experiments"**
```
Strict time limits force ruthless prioritization
4-8 hours is usually enough to answer core questions
If not, question needs refinement
```

---

### ❌ Anti-Patterns to Avoid

**Anti-Pattern: "We'll Figure It Out As We Go"**
```
❌ Start implementing without validating risky assumptions
❌ Discover problems late in development
❌ Significant rework required

✅ Better: Spend 30 minutes identifying risks, 4 hours validating worst one
```

**Anti-Pattern: "Perfect PoC Syndrome"**
```
❌ Try to make PoC production-ready
❌ Add features not needed for validation
❌ Spend 40 hours on "8-hour" PoC

✅ Better: Ruthlessly cut scope, focus on core question only
```

**Anti-Pattern: "Analysis Paralysis"**
```
❌ Spend days discussing risks without validating
❌ Theoretical debates about what might work
❌ Never actually test anything

✅ Better: 30 minutes discussion, then BUILD and TEST
```

**Anti-Pattern: "Sunk Cost Fallacy"**
```
❌ PoC shows approach won't work
❌ Continue anyway because "we've already invested time"

✅ Better: Celebrate the learning, pivot to alternative
```

---

## 🎯 AI Collaboration Prompts

### Initial Risk Assessment
```
I'm planning to build [project description].

Help me identify what I'm MOST uncertain about:

1. List technical assumptions I'm making
2. Identify aspects with highest risk/uncertainty
3. Flag anything that could cause project failure
4. Suggest which risks to validate first

For each high-risk area, suggest a lean PoC (4-8 hours) to validate it.
```

### PoC Design
```
Design a minimal proof of concept:

Risk: [What you're uncertain about]
Assumption: [What you're assuming]
Impact if wrong: [Consequence]
Time budget: [4-8 hours]

Help me design the SMALLEST experiment to validate this.
Focus on: What can we skip to keep this lean?
```

### During PoC Execution
```
I'm [X hours] into a PoC to validate [assumption].

Current status: [What you've built]
Observations: [What you're seeing]
Questions: [Unexpected issues]

Should I continue this path or pivot?
What's the fastest way to get to a decision?
```

### PoC Results Analysis
```
Analyze these PoC results:

[Paste results, measurements, findings]

Questions:
1. Does this validate or invalidate the approach?
2. What's the confidence level (high/medium/low)?
3. Should I proceed, extend the PoC, or pivot?
4. What remaining risks should I be aware of?
5. If pivoting, what alternative approaches?
```

---

## 📋 Quick Reference Checklist

**Before Any Significant Project:**
- [ ] Spent 30 minutes on risk assessment
- [ ] Identified 2-3 highest-risk/highest-uncertainty areas
- [ ] Designed lean PoCs for critical risks (4-8 hours each)
- [ ] Defined clear success/failure criteria for each PoC
- [ ] Got AI input on risk identification and PoC design

**During PoC Execution:**
- [ ] Strict time box set and enforced
- [ ] Ruthlessly cutting scope to stay focused
- [ ] Documenting findings as you go
- [ ] Measuring against success/failure criteria
- [ ] Collaborating with AI when stuck

**After PoC:**
- [ ] Documented results (what worked, what didn't)
- [ ] Listed assumptions validated/invalidated
- [ ] Made clear go/no-go decision
- [ ] If proceeding: noted remaining risks
- [ ] If pivoting: identified alternative approach

---

## 🎓 Key Principles

1. **Fail Fast, Learn Quick**
   - Better 4 hours discovering something won't work than 4 weeks

2. **Question Assumptions Explicitly**
   - Make implicit assumptions explicit
   - Validate the riskiest ones first

3. **Time-Box Ruthlessly**
   - Forces focus on core question
   - Prevents perfectionism

4. **Design Experiments That Can Fail**
   - If PoC can't fail, it's not testing anything valuable

5. **Celebrate Negative Results**
   - Learning an approach doesn't work is success
   - Saves weeks of wasted development

6. **Validate Before Implementing**
   - 30 minutes of risk assessment + 4 hours of PoC
   - Often saves weeks of rework

---

**Remember:** The goal isn't to build a perfect PoC. The goal is to answer a critical question as quickly as possible so you can make an informed decision.

**Time invested in validation pays exponential dividends in avoided rework.**


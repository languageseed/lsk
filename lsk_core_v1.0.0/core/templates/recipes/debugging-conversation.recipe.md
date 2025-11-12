# 🐛 Debugging Conversation Recipe
**Purpose**: Structure AI conversations for effective troubleshooting and problem-solving
**Time**: 30-60 minutes depending on complexity

## Conversation Flow

### **Phase 1: Problem Definition (5-10 minutes)**
**Goal**: Clearly define what's broken and gather initial evidence

**Conversation Starter:**
```
I need help debugging an issue. Here's what's happening:
[Brief description of the problem]

Let me provide the context systematically:
```

**Information to Gather:**
```yaml
# Use context.debug.template.yaml or structure like this:
problem_statement: |
  # Example: "API returns 500 errors for 3% of requests, started yesterday"
  # Example: "React component re-renders infinitely in production only"
  
error_evidence:
  # Example: "Error: Database connection timeout after 30 seconds"
  # Example: "Console shows 'Cannot read property of undefined' in UserProfile.tsx"
  - ""
  
reproduction_steps:
  # Example: "1. Login as admin user, 2. Navigate to reports page, 3. Click export button"
  - ""
```

### **Phase 2: Evidence Analysis (10-15 minutes)**
**Goal**: AI analyzes evidence and asks clarifying questions

**Effective Prompts:**
```
"Based on this error evidence, what are the most likely root causes? 
What additional information would help narrow it down?"

"Here are the reproduction steps. What does this pattern suggest 
about where the problem might be occurring?"
```

**AI Should Ask:**
- When did this start happening?
- Does it affect all users or specific types?
- What changed recently in the codebase?
- Are there patterns in timing, user types, or data?

### **Phase 3: Hypothesis Formation (5-10 minutes)**
**Goal**: Generate testable hypotheses about root cause

**Conversation Pattern:**
```
"Given the evidence, I think the issue might be:
1. [Primary hypothesis] - because [reasoning]
2. [Secondary hypothesis] - because [reasoning]

How should we test these hypotheses? What would you look for first?"
```

**AI Should Suggest:**
- Specific logs or metrics to check
- Code areas to examine
- Quick tests to validate/eliminate hypotheses
- Debugging tools or techniques to use

### **Phase 4: Investigation & Testing (15-20 minutes)**
**Goal**: Systematically test hypotheses and gather more data

**Investigation Loop:**
```
"I checked [hypothesis] by [method]. Here's what I found:
[Results - logs, metrics, code analysis]

This [confirms/rules out] [hypothesis]. What should I investigate next?"
```

**Keep AI Updated:**
- Share specific error messages and stack traces
- Provide relevant code snippets from investigation
- Report what you tested and results
- Ask for next steps based on findings

### **Phase 5: Solution Implementation (10-15 minutes)**
**Goal**: Implement fix and verify it resolves the issue

**Solution Discussion:**
```
"Based on our investigation, the root cause appears to be [finding].
Here's my proposed fix: [solution approach]

Can you review this approach and suggest any improvements or considerations?"
```

**AI Should Help With:**
- Code review of proposed fix
- Edge cases to consider
- Testing strategy for the fix
- Potential side effects or risks

## Conversation Checkpoints

**After Phase 2:**
```markdown
## Current Understanding
- Problem: [Clear problem statement]
- Evidence: [Key error messages, patterns identified]
- AI Knowledge: [What context has been shared]

## Hypotheses Generated
1. [Hypothesis 1] - [Evidence supporting it]
2. [Hypothesis 2] - [Evidence supporting it]

## Next Steps
- [Specific investigation tasks]
```

**After Phase 4:**
```markdown
## Investigation Results
- Tested: [What was investigated]
- Found: [Key findings and evidence]
- Ruled Out: [Hypotheses eliminated]
- Root Cause: [Identified cause if found]

## Solution Approach
- [Proposed fix or next investigation steps]
```

## AI Prompt Templates

**Initial Problem Analysis:**
```
Analyze this debugging scenario and suggest investigation approach:

Problem: [problem description]
Error Evidence: [error messages, logs]
System Context: [relevant system info]

What are the most likely causes and how should I investigate them systematically?
```

**Code Investigation:**
```
Help me analyze this code for potential issues related to [problem]:

[code snippet]

The error is: [error message]
Context: [when/how error occurs]

What could be causing this and what should I check next?
```

**Solution Review:**
```
Review this proposed fix for [problem]:

Root Cause: [identified cause]
Proposed Solution: [fix description/code]

Are there any issues with this approach? What edge cases should I consider?
```

## Common Conversation Patterns

### **For Intermittent Issues:**
1. Focus on identifying patterns (timing, users, data)
2. Look for race conditions or resource constraints
3. Add logging to capture state during failures

### **For New Functionality Bugs:**
1. Compare with requirements/specifications
2. Review recent code changes and deployments
3. Check integration points and data flow

### **For Performance Issues:**
1. Gather performance metrics and baselines
2. Profile slow operations
3. Analyze resource usage patterns

### **For Production-Only Issues:**
1. Compare production vs development environments
2. Check configuration differences
3. Analyze production-specific data or load patterns

## Tips for Better Debugging Conversations

**Do:**
- Share complete error messages, not summaries
- Provide sufficient context about when/how errors occur
- Test hypotheses systematically and report results
- Keep AI updated on investigation progress

**Don't:**
- Jump to solutions without understanding root cause
- Share huge code dumps without focusing on relevant areas
- Ignore AI suggestions for additional investigation
- Stop investigating once you find a workaround

**Conversation Quality Indicators:**
- AI asks relevant clarifying questions
- Hypotheses are testable and specific
- Investigation follows logical progression
- Solution addresses root cause, not just symptoms

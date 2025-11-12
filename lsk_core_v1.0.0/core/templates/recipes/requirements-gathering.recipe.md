# 📋 Requirements Gathering Conversation Recipe
**Purpose**: Structure AI conversations to systematically gather and clarify requirements
**Time**: 60-90 minutes for comprehensive requirements gathering

## Conversation Flow

### **Phase 1: Problem Discovery (15-20 minutes)**
**Goal**: Understand the business problem and user needs

**Conversation Starter:**
```
I need help gathering requirements for a new feature/system. Let me start with the business context:

Business Problem:
[What problem are we trying to solve?]

Target Users:
[Who will use this?]

Success Metrics:
[How will we know it's working?]
```

**AI-Guided Discovery:**
```
"Help me explore this problem space systematically. What questions should I be asking to understand:
- User pain points and workflows
- Business constraints and priorities  
- Technical considerations
- Success criteria"
```

**AI Should Ask:**
- Who are the primary and secondary users?
- What's the current solution (if any) and why isn't it working?
- What business outcomes are we trying to achieve?
- What happens if we don't solve this problem?

### **Phase 2: User Story Development (20-25 minutes)**
**Goal**: Create specific user stories with concrete examples

**Story Generation Prompt:**
```
"Based on our problem discussion, help me create user stories. Use this format:

As a [type of user]
I want [capability] 
So that [benefit/outcome]

For each story, let's develop:
- Specific use case examples
- Edge cases to consider
- Success criteria"
```

**Use Example Generation Prompt:**
```
Use prompt "requirements-example-gen-001" to generate concrete examples:

Requirement: [user story]
Context: [business/technical context]
Current Understanding: [what we know so far]
```

**Story Refinement Loop:**
```
"For this user story: [story]
Let's make it more specific:
- What exactly does 'success' look like?
- What edge cases should we handle?
- What are the error scenarios?
- How does this integrate with existing workflows?"
```

### **Phase 3: Acceptance Criteria Definition (15-20 minutes)**
**Goal**: Convert stories into testable acceptance criteria

**Criteria Generation:**
```
Use prompt "acceptance-criteria-gen-001" to convert our examples into testable criteria:

Examples and Requirements: [stories and examples from Phase 2]
System Context: [technical and business context]
```

**Validation Questions:**
```
"For each acceptance criterion, let's verify:
- Is it specific and measurable?
- Can we test it clearly (pass/fail)?
- Does it focus on user value?
- Are we missing any important scenarios?"
```

### **Phase 4: Non-Functional Requirements (10-15 minutes)**
**Goal**: Identify performance, security, and operational requirements

**Systematic Exploration:**
```
"Now let's explore non-functional requirements:

Performance:
- How many users/requests should we support?
- What are acceptable response times?
- Are there peak usage patterns?

Security:
- What data needs protection?
- Who should have access to what?
- Are there compliance requirements?

Usability:
- What devices/browsers must we support?
- Are there accessibility requirements?
- What's the user's technical expertise level?

Operational:
- How will this be deployed and maintained?
- What monitoring/alerting is needed?
- Are there backup/recovery requirements?"
```

### **Phase 5: Constraints & Dependencies (10-15 minutes)**
**Goal**: Identify technical and business constraints

**Constraint Discovery:**
```
"Let's identify our constraints and dependencies:

Technical Constraints:
- Existing systems we must integrate with
- Technology stack limitations
- Performance/infrastructure limits

Business Constraints:
- Budget and timeline limitations
- Regulatory/compliance requirements
- Organizational/team constraints

Dependencies:
- What other projects/teams do we depend on?
- What external services or data do we need?
- What needs to be delivered first?"
```

## Conversation Checkpoints

**After Phase 1:**
```markdown
## Problem Understanding
**Business Problem**: [Clear problem statement]
**Target Users**: [Primary and secondary user types]
**Success Metrics**: [How we'll measure success]
**Current State**: [Existing solutions and their limitations]

## AI Understanding**:
- [What context has been shared]
- [Key assumptions identified]
```

**After Phase 3:**
```markdown
## Requirements Summary
**User Stories**: [Count] stories covering [scope]
**Acceptance Criteria**: [Count] testable criteria
**Examples Generated**: [Count] concrete scenarios

## Coverage Check**:
- Primary user workflows: [covered/missing]
- Error scenarios: [covered/missing]  
- Integration points: [covered/missing]
```

**After Phase 5:**
```markdown
## Complete Requirements
**Functional**: [Summary of features and capabilities]
**Non-Functional**: [Performance, security, usability requirements]
**Constraints**: [Technical and business limitations]
**Dependencies**: [External dependencies and prerequisites]

## Next Steps**:
- [Immediate actions needed]
- [Information still needed]
- [Stakeholder approvals required]
```

## AI Prompt Templates

**Problem Exploration:**
```
Help me explore this problem space systematically:

Business Context: [company, domain, current situation]
Initial Problem Statement: [what we think needs to be solved]
Stakeholders: [who's involved and affected]

What questions should I ask to fully understand this problem and the requirements for solving it?
```

**User Story Development:**
```
Convert this problem into specific user stories:

Problem: [detailed problem description]
Users: [user types and their goals]
Context: [business and technical context]

Create user stories with concrete examples of how each user would interact with the solution.
```

**Requirements Validation:**
```
Review these requirements for completeness and clarity:

User Stories: [list of stories]
Acceptance Criteria: [list of criteria]
Constraints: [known limitations]

What's missing? What needs clarification? What edge cases should we consider?
```

## Requirements Gathering Patterns

### **For New Features**
1. Start with user workflows and pain points
2. Generate concrete usage examples
3. Focus on integration with existing system
4. Consider rollout and adoption strategy

### **For System Replacements**
1. Document current system behavior thoroughly
2. Identify what must be preserved vs improved
3. Plan migration strategy early
4. Consider parallel operation needs

### **For Integrations**
1. Map data flows between systems
2. Define error handling and retry logic
3. Consider authentication and authorization
4. Plan for API versioning and changes

### **For Compliance Features**
1. Start with regulatory requirements
2. Map business processes to compliance needs
3. Design audit trails and reporting early
4. Plan for compliance validation and testing

## Common Conversation Traps

**Avoid:**
- Jumping to solutions before understanding problems
- Accepting vague requirements without examples
- Focusing only on happy path scenarios
- Ignoring non-functional requirements
- Missing integration and operational concerns

**Instead:**
- Always ask "can you give me a specific example?"
- Challenge assumptions with "what if..." scenarios
- Use AI to systematically explore edge cases
- Consider the full system lifecycle
- Validate requirements with concrete acceptance criteria

## Requirements Quality Indicators

**Good Requirements Conversation:**
- AI asks probing questions about edge cases
- Examples are concrete and specific
- Requirements are testable and measurable
- Non-functional requirements are explicitly addressed
- Dependencies and constraints are clearly identified

**Poor Requirements Conversation:**
- Requirements remain vague and high-level
- No concrete examples or scenarios
- Focus only on happy path
- Technical implementation details mixed with requirements
- Missing consideration of failure modes and edge cases

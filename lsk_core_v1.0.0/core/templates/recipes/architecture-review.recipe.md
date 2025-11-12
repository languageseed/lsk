# 🏗️ Architecture Review Conversation Recipe
**Purpose**: Structure AI conversations for reviewing and improving system architecture
**Time**: 45-90 minutes depending on scope

## Conversation Flow

### **Phase 1: Architecture Context (10-15 minutes)**
**Goal**: Share current architecture and review objectives

**Conversation Starter:**
```
I need help reviewing our system architecture. Let me provide the context:

Current Architecture:
[High-level description or diagram]

Review Focus:
[What specifically you want to evaluate - scalability, maintainability, performance, etc.]
```

**Context to Share:**
```yaml
# Structure your architecture context:
system_overview:
  # Example: "Microservices architecture with React frontend, Node.js services, PostgreSQL"
  # Example: "Monolithic Rails application with Redis caching and background jobs"
  
components:
  # Example: "- Frontend: React SPA, - API Gateway: Kong, - Services: User, Payment, Notification"
  - ""
  
current_scale:
  # Example: "1000 daily active users, 50 req/sec peak, 2GB database"
  # Example: "10K users, 500 req/sec, distributed across 3 regions"
  
pain_points:
  # Example: "Slow database queries, difficult to add new features, deployment complexity"
  - ""
  
growth_expectations:
  # Example: "Expect 10x user growth in 12 months"
  # Example: "Adding 5 new markets, each with different compliance requirements"
```

### **Phase 2: Architecture Analysis (15-20 minutes)**
**Goal**: AI analyzes current architecture and identifies strengths/weaknesses

**Effective Prompts:**
```
"Based on this architecture, what are the potential bottlenecks and scalability concerns?
What design patterns are working well and what might need improvement?"

"Given our growth expectations, where do you see the biggest risks in our current design?"
```

**AI Should Analyze:**
- Scalability limitations and bottlenecks
- Coupling between components
- Single points of failure
- Data flow and consistency patterns
- Performance characteristics
- Maintainability and development velocity

### **Phase 3: Requirements & Constraints (10-15 minutes)**
**Goal**: Clarify requirements and constraints for architecture improvements

**Discussion Topics:**
```
"Let's clarify the requirements for our architecture improvements:

Performance Requirements:
- Response time targets
- Throughput requirements  
- Availability needs

Operational Constraints:
- Team size and skills
- Budget limitations
- Timeline constraints
- Technology preferences

Business Requirements:
- Compliance needs
- Security requirements
- Multi-tenancy needs
- Integration requirements"
```

**AI Should Help Prioritize:**
- Critical vs nice-to-have requirements
- Trade-offs between different architectural choices
- Risk assessment of various approaches

### **Phase 4: Architecture Options (15-25 minutes)**
**Goal**: Explore different architectural approaches and their trade-offs

**Exploration Pattern:**
```
"Given our requirements and constraints, what are the main architectural options?
For each option, what are the benefits, drawbacks, and implementation effort?"
```

**AI Should Present:**
- 2-3 distinct architectural approaches
- Clear pros/cons for each option
- Migration complexity assessment
- Resource requirements for each approach

**Options Analysis Framework:**
```markdown
## Option 1: [Approach Name]
**Description**: [High-level approach]
**Benefits**: 
- [Specific advantages]
**Drawbacks**: 
- [Specific limitations]
**Implementation Effort**: [High/Medium/Low]
**Migration Strategy**: [How to get there]

## Option 2: [Alternative Approach]
[Same analysis structure]
```

### **Phase 5: Decision & Next Steps (10-15 minutes)**
**Goal**: Choose approach and plan implementation

**Decision Framework:**
```
"Based on our analysis, let's evaluate each option against our criteria:

Evaluation Criteria:
1. Meets performance requirements
2. Fits team capabilities  
3. Manageable implementation complexity
4. Supports business growth
5. Acceptable operational overhead

Which option best balances these factors?"
```

**Planning Discussion:**
```
"For our chosen approach, help me break this down:
- What are the implementation phases?
- What are the key risks and mitigation strategies?
- What proof-of-concepts should we build first?
- How do we measure success?"
```

## Conversation Checkpoints

**After Phase 2:**
```markdown
## Architecture Analysis Summary
**Current Strengths**:
- [What's working well]

**Identified Issues**:
- [Pain points and limitations]

**Key Concerns**:
- [Primary risks for growth/scale]

**AI Understanding**:
- [What context has been shared about the system]
```

**After Phase 4:**
```markdown
## Architecture Options
**Option 1**: [Name] - [Brief description]
**Option 2**: [Name] - [Brief description]
**Option 3**: [Name] - [Brief description]

**Evaluation Criteria**:
- [Key factors for decision]

**Next Decision Point**:
- [What needs to be decided]
```

## AI Prompt Templates

**Initial Architecture Analysis:**
```
Review this system architecture and identify potential issues:

Architecture: [description]
Scale: [current usage patterns]
Pain Points: [current problems]
Growth Plan: [expected changes]

What are the main architectural concerns and improvement opportunities?
```

**Pattern Recommendation:**
```
Given these requirements, recommend architectural patterns:

Requirements: [functional and non-functional requirements]
Constraints: [team, technology, timeline constraints]
Current State: [existing architecture]

What patterns would best address our needs and why?
```

**Migration Strategy:**
```
Help design a migration strategy for this architectural change:

Current Architecture: [existing system]
Target Architecture: [desired end state]
Constraints: [cannot break existing functionality, limited downtime, etc.]

What's the safest, most practical migration approach?
```

## Architecture Review Types

### **Scalability Review**
**Focus**: Can the system handle growth?
**Key Questions**:
- Where are the bottlenecks?
- How does each component scale?
- What breaks first under load?

### **Maintainability Review**
**Focus**: How easy is it to change and extend?
**Key Questions**:
- How coupled are the components?
- How easy is it to add features?
- What's the testing strategy?

### **Performance Review**
**Focus**: Does the system meet performance requirements?
**Key Questions**:
- Where are the slow operations?
- How can we optimize critical paths?
- What caching strategies make sense?

### **Security Review**
**Focus**: Is the system secure by design?
**Key Questions**:
- Where are the security boundaries?
- How is authentication/authorization handled?
- What are the attack vectors?

## Conversation Best Practices

**Share Effectively**:
- Provide architectural diagrams or clear descriptions
- Include quantitative data (users, requests, data size)
- Explain business context and growth plans
- Be specific about current problems

**Ask Good Questions**:
- Focus on trade-offs between options
- Understand implementation complexity
- Consider operational requirements
- Think about team capabilities

**Validate Assumptions**:
- Question AI recommendations with your domain knowledge
- Consider regulatory and business constraints
- Think about organizational readiness for change
- Validate technical feasibility

**Document Decisions**:
- Record the reasoning behind architectural choices
- Capture alternative options that were considered
- Note assumptions and constraints that influenced decisions
- Plan for future review points

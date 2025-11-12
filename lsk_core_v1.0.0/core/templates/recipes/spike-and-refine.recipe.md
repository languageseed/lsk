# 🚀 Spike-and-Refine Recipe: Code Fast, Break Things, Learn, Rebuild
**Purpose**: Rapidly discover edge cases and build better solutions through iterative learning  
**Time**: 1-2 hours spike + 1-2 hours refine per iteration  
**Philosophy**: It's nearly impossible to write perfect code on first attempt - embrace the mess, learn from it

---

## The Core Insight

> "It's really hard to write perfect code from the first line to the last and not completely rewrite the whole thing several times or parts of it."

**The Anti-Pattern:**
- Try to write perfect code from line 1
- Over-design before understanding the problem
- Fear making mistakes
- Get paralyzed by trying to handle all edge cases upfront

**The Better Pattern:**
- Code fast and messy to discover what breaks
- Let the code teach you what you didn't know
- Extract learnings and patterns from the chaos
- Rewrite with newfound understanding

---

## When to Use This Approach

**Perfect For:**
- ✅ **Learning by building** - You don't fully understand the domain yet
- ✅ Exploring unfamiliar territory (new libraries, APIs, patterns)
- ✅ Discovering hidden edge cases and gotchas
- ✅ Understanding how systems actually behave vs assumptions
- ✅ Finding the "shape" of a solution before optimizing
- ✅ Quick validation of approach viability
- ✅ **Prototyping concepts you've never built before**

**Not Ideal For:**
- ❌ Well-understood, repetitive tasks
- ❌ Critical production fixes (where speed matters more than learning)
- ❌ Simple CRUD operations with known patterns
- ❌ Pure refactoring with no unknowns

**Critical Insight:**
> "For a long time when building knowledge graph services I had no idea what it actually was but I had to learn it as I went and see the prototypes..."

**Sometimes you can't design it because you don't understand it yet. The prototypes ARE your education.**

---

## The Spike-and-Refine Process

### 🔥 Phase 1: SPIKE - Code Until It Breaks (1-2 hours)

**Mindset:** Speed > Perfection. Make it work, don't make it pretty.

**Step 1: Set Clear Spike Goal**
```
Goal: [What you're trying to learn/build]
Time Box: [1-2 hours max]
Success: [Working code that demonstrates the concept]
Learning Target: [What you want to discover]

Example:
Goal: Get WebSocket bi-directional communication working
Time Box: 90 minutes
Success: Two clients can send messages to each other
Learning Target: How WebSocket connections behave, what breaks them
```

**Step 2: Code Fast and Messy**

**AI Prompt:**
```
I'm doing a fast spike to learn [goal]. I want to code quickly and 
messily to discover edge cases and what breaks.

Help me build a minimal working version as fast as possible. 
Don't worry about:
- Perfect code structure
- Error handling (except critical paths)
- Optimization
- Best practices
- Complete features

Focus on:
- Getting something working quickly
- Discovering how things actually behave
- Finding edge cases and gotchas
```

**Spike Guidelines:**
- ✅ Copy-paste code liberally
- ✅ Hardcode values
- ✅ Use global variables if it's faster
- ✅ Skip validation and error handling initially
- ✅ Console.log / print debug everything
- ✅ Duplicate code rather than abstract prematurely
- ✅ Use any shortcut that speeds you up

**Document As You Break Things:**
```markdown
## Spike Log

### Things That Worked
- [What worked unexpectedly well]
- [Easier than expected]

### Things That Broke
- [Edge case 1] - [What happened]
- [Edge case 2] - [What happened]
- [Gotcha 1] - [What surprised you]

### Lessons Learned
- [Understanding you gained]
- [Assumptions that were wrong]
- [Things to handle in clean version]

### Code Smells to Fix
- [What made the code messy]
- [Duplication that should be DRY]
- [Hardcoded values]
```

---

**Step 3: Push It Until It Fails**

**Actively Try to Break Your Code:**
```
Test Scenarios to Try:
- [ ] Edge case: Empty input
- [ ] Edge case: Huge input
- [ ] Edge case: Invalid format
- [ ] Rapid repeated calls
- [ ] Concurrent operations
- [ ] Network failures/timeouts
- [ ] Resource exhaustion
- [ ] Unexpected data types
- [ ] Boundary conditions
```

**AI Prompt:**
```
I've built a spike for [feature]. Here's the code:

[Paste your messy spike code]

Help me think of ways to break this. What edge cases am I missing?
What scenarios would cause this to fail?
```

**Document Every Failure:**
```markdown
## Break Test Results

### Test: [Scenario]
- Input: [What you tried]
- Expected: [What should happen]
- Actual: [What actually happened]
- Why it broke: [Root cause]
- Fix needed: [What needs to be handled]
```

---

### 📊 Phase 2: EXTRACT - Learn from the Chaos (30 minutes)

**Step 4: Extract Patterns and Insights**

**AI Prompt:**
```
Review this spike code and help me extract:

[Paste spike code + failure documentation]

1. What patterns emerged that should be kept?
2. What edge cases did we discover?
3. What assumptions were wrong?
4. What's the "shape" of a good solution?
5. What should be refactored vs rewritten?
6. What core logic is sound vs needs rethinking?
```

**Extraction Template:**
```markdown
## Spike Analysis

### Core Logic That Works ✅
- [Pattern/approach that's fundamentally sound]
- [Algorithm/flow that should be kept]
- [Integration pattern that works]

### Edge Cases Discovered 🔍
| Edge Case | Impact | Handling Strategy |
|-----------|--------|-------------------|
| [Case 1] | [High/Med/Low] | [How to handle] |
| [Case 2] | [High/Med/Low] | [How to handle] |

### Wrong Assumptions 💡
- **Assumed:** [What you thought]
- **Reality:** [What you discovered]
- **Implication:** [How this changes approach]

### Code Quality Issues 🔧
- [Duplication to DRY]
- [Magic values to constants]
- [Implicit logic to explicit]
- [Missing error handling]

### Architecture Insights 🏗️
- [Separation of concerns needed]
- [Abstraction opportunities]
- [Integration patterns]

### Rewrite Strategy 🎯
**Keep:**
- [What to preserve from spike]

**Improve:**
- [What to refactor]

**Redesign:**
- [What to rebuild completely]
```

---

### ✨ Phase 3: REFINE - Rebuild with Knowledge (1-2 hours)

**Step 5: Rewrite the Clean Version**

**AI Prompt:**
```
Based on this spike analysis:

[Paste extraction/analysis]

Help me rewrite a clean version that:
1. Handles all discovered edge cases
2. Follows best practices
3. Has proper error handling
4. Uses clean abstractions
5. Is maintainable and testable

Keep the core logic that worked, improve what was messy, redesign what was wrong.
```

**Clean Version Checklist:**
```markdown
## Clean Rewrite

### Structure
- [ ] Clear separation of concerns
- [ ] Proper abstractions (not premature)
- [ ] Meaningful names (no temp/foo/test)
- [ ] Consistent patterns

### Robustness
- [ ] All discovered edge cases handled
- [ ] Input validation
- [ ] Error handling with clear messages
- [ ] Resource cleanup (connections, files, etc.)

### Quality
- [ ] No hardcoded values (use config/constants)
- [ ] DRY - duplication removed
- [ ] Comments explain "why", not "what"
- [ ] Tests for edge cases

### Lessons Applied
- [ ] Wrong assumptions corrected
- [ ] Discoveries from spike incorporated
- [ ] Known failure modes handled
```

---

**Step 6: Compare Spike vs Clean**

**Side-by-Side Analysis:**
```markdown
## Spike vs Clean Comparison

### Metrics
| Metric | Spike | Clean | Improvement |
|--------|-------|-------|-------------|
| Lines of code | [X] | [Y] | [+/- %] |
| Edge cases handled | [X] | [Y] | [+Z] |
| Time to write | [Xh] | [Yh] | [Total] |
| Failures found | [X] | [0] | [Fixed] |

### What We Learned
- [Key insight 1]
- [Key insight 2]

### ROI on Spike
- Time invested: [Spike + Refine hours]
- Time saved: [Avoided rewrites, bug fixes, wrong paths]
- Knowledge gained: [Priceless]
```

---

## Real-World Examples

### Example 1: WebSocket Connection Handling

**Spike (Fast & Messy):**
```javascript
// Spike: Get it working, find what breaks
const WebSocket = require('ws');

let ws;

function connect() {
  ws = new WebSocket('ws://localhost:8080');
  
  ws.on('open', () => {
    console.log('connected');
    ws.send('hello');
  });
  
  ws.on('message', (data) => {
    console.log('got:', data);
  });
}

connect();
```

**What Broke During Testing:**
- ❌ No reconnection if connection drops
- ❌ Send() fails if called before connection open
- ❌ Memory leak from event listeners
- ❌ No handling of close events
- ❌ Race conditions with rapid send calls

**Lessons Extracted:**
- Need connection state tracking
- Need message queue for pre-connection sends
- Need cleanup on close
- Need reconnection strategy
- Need rate limiting

**Clean Version:**
```javascript
// Clean: Handles all discovered edge cases
class WebSocketClient {
  constructor(url, options = {}) {
    this.url = url;
    this.reconnectDelay = options.reconnectDelay || 1000;
    this.maxReconnectDelay = options.maxReconnectDelay || 30000;
    this.messageQueue = [];
    this.state = 'disconnected';
    this.reconnectAttempts = 0;
  }
  
  connect() {
    if (this.state === 'connecting' || this.state === 'connected') {
      return; // Prevent duplicate connections
    }
    
    this.state = 'connecting';
    this.ws = new WebSocket(this.url);
    
    this.ws.on('open', () => {
      this.state = 'connected';
      this.reconnectAttempts = 0;
      this.flushMessageQueue();
    });
    
    this.ws.on('message', (data) => {
      this.handleMessage(data);
    });
    
    this.ws.on('close', () => {
      this.state = 'disconnected';
      this.scheduleReconnect();
    });
    
    this.ws.on('error', (error) => {
      console.error('WebSocket error:', error);
    });
  }
  
  send(message) {
    if (this.state === 'connected') {
      this.ws.send(message);
    } else {
      // Queue messages until connected
      this.messageQueue.push(message);
    }
  }
  
  flushMessageQueue() {
    while (this.messageQueue.length > 0) {
      this.ws.send(this.messageQueue.shift());
    }
  }
  
  scheduleReconnect() {
    const delay = Math.min(
      this.reconnectDelay * Math.pow(2, this.reconnectAttempts),
      this.maxReconnectDelay
    );
    
    this.reconnectAttempts++;
    setTimeout(() => this.connect(), delay);
  }
  
  close() {
    this.state = 'closing';
    if (this.ws) {
      this.ws.close();
      this.ws.removeAllListeners(); // Prevent memory leaks
    }
  }
}
```

**Spike ROI:**
- Spike time: 45 minutes
- Discovered: 5 critical edge cases
- Clean rewrite: 90 minutes
- Total: 2.25 hours
- Alternative (try to write perfect first): 4+ hours + production bugs

---

### Example 2: Knowledge Graph Service (Real-World)

**Situation:** Need to build knowledge graph service, but don't fully understand what a knowledge graph actually is.

**Traditional Approach Would Fail:**
```
❌ Step 1: Research knowledge graphs (read papers, docs)
❌ Step 2: Design perfect architecture
❌ Step 3: Implement based on theoretical understanding
❌ Result: Wrong abstractions, doesn't match reality
```

**Spike-and-Refine Approach (What Actually Worked):**

**Prototype 1: "Just Make Nodes and Edges" (2 hours)**
```javascript
// Spike: Simplest possible thing
let nodes = {};
let edges = [];

function addNode(id, data) {
  nodes[id] = data;
}

function addEdge(from, to, type) {
  edges.push({ from, to, type });
}

function query(nodeId) {
  return edges.filter(e => e.from === nodeId);
}
```

**What Broke:**
- ❌ Can't efficiently find relationships
- ❌ Can't traverse graph (find path from A to B)
- ❌ Can't query by relationship type
- ❌ No way to query "all nodes connected to X"

**What Learned:**
- 💡 Need bidirectional indexing (both from→to and to→from)
- 💡 Need to query by relationship types
- 💡 Graph traversal is core operation, not afterthought
- 💡 "Query" means something specific in graph context

**Prototype 2: "Add Graph Traversal" (3 hours)**
```javascript
class KnowledgeGraph {
  constructor() {
    this.nodes = new Map();
    this.edgesFrom = new Map();  // from → [edges]
    this.edgesTo = new Map();    // to → [edges]
  }
  
  addEdge(from, to, type, properties) {
    const edge = { from, to, type, properties };
    
    if (!this.edgesFrom.has(from)) this.edgesFrom.set(from, []);
    if (!this.edgesTo.has(to)) this.edgesTo.set(to, []);
    
    this.edgesFrom.get(from).push(edge);
    this.edgesTo.get(to).push(edge);
  }
  
  traverse(startId, relationshipType, maxDepth = 3) {
    // BFS traversal
    let visited = new Set();
    let queue = [{ id: startId, depth: 0 }];
    let results = [];
    
    while (queue.length > 0) {
      let { id, depth } = queue.shift();
      
      if (visited.has(id) || depth > maxDepth) continue;
      visited.add(id);
      
      results.push({ node: this.nodes.get(id), depth });
      
      let edges = this.edgesFrom.get(id) || [];
      for (let edge of edges) {
        if (!relationshipType || edge.type === relationshipType) {
          queue.push({ id: edge.to, depth: depth + 1 });
        }
      }
    }
    
    return results;
  }
}
```

**What Broke:**
- ❌ Traversal gets slow with large graphs
- ❌ Can't do complex queries (find all nodes where X AND Y)
- ❌ No way to persist graph
- ❌ Memory usage grows unbounded

**What Learned:**
- 💡 Need query language (can't hardcode all query types)
- 💡 Need proper graph database (Neo4j, etc.) for production
- 💡 In-memory only works for small graphs
- 💡 Understanding Cypher query language now makes sense

**Prototype 3: "Add Cypher-Like Queries" (4 hours)**
```javascript
class KnowledgeGraph {
  // ... previous code ...
  
  query(pattern) {
    // Simple pattern matching: (Person)-[KNOWS]->(Person)
    // Parse pattern and execute
    return this.executePattern(pattern);
  }
  
  // Implemented basic pattern matching...
}
```

**What Broke:**
- ❌ Reinventing Neo4j poorly
- ❌ Pattern matching too complex to implement well
- ❌ Performance terrible compared to real graph DB

**What Learned:**
- 💡 **AHA MOMENT:** Now I understand WHY graph databases exist!
- 💡 My use case doesn't need full graph database
- 💡 Need hybrid: simple graph structure + targeted queries
- 💡 **NOW I know what to build vs what to use off-the-shelf**

**Final Clean Version (With Understanding):**
```javascript
// Clean: After understanding what I actually need
class KnowledgeGraphService {
  constructor(neo4jConnection) {
    // Use Neo4j for complex queries
    this.db = neo4jConnection;
    
    // In-memory cache for hot paths
    this.cache = new GraphCache();
  }
  
  // Domain-specific queries (not generic graph operations)
  async findRelatedConcepts(conceptId, maxDepth = 2) {
    // Optimized for our specific use case
    const cached = this.cache.get(conceptId);
    if (cached) return cached;
    
    const results = await this.db.query(`
      MATCH (c:Concept {id: $conceptId})-[r:RELATED_TO*1..${maxDepth}]->(related:Concept)
      RETURN related
    `, { conceptId });
    
    this.cache.set(conceptId, results);
    return results;
  }
  
  // Other domain-specific methods...
}
```

**Journey Summary:**
- Prototype 1: Learned what a graph IS (nodes + edges)
- Prototype 2: Learned what graph OPERATIONS are (traversal, querying)
- Prototype 3: Learned WHY graph databases exist
- Final: Built right solution because NOW understood the domain

**Time Investment:**
- Prototypes: 9 hours total
- Final clean version: 6 hours
- Total: 15 hours

**Alternative (Try to Design Perfect First):**
- Research: 10 hours (still wouldn't truly understand)
- Wrong design: 20 hours
- Realize it's wrong: 5 hours
- Redesign: 15 hours
- Total: 50 hours + frustration

**ROI: 3x time savings + actual understanding of domain**

**Key Insight:**
The prototypes weren't wasted time - they were the ONLY way to understand what a knowledge graph actually is. You can't design something you don't understand. The act of building (and breaking) is learning.

---

### Example 3: Rate Limiting Implementation

**Spike Discovery Log:**
```markdown
## Spike: Rate Limiting

### Attempt 1: Simple Counter (15 min)
- Broke: Counter never resets
- Learned: Need time windows

### Attempt 2: Time Window Counter (20 min)
- Broke: Burst at window boundaries
- Learned: Need sliding window

### Attempt 3: Sliding Window (30 min)
- Broke: Memory grows unbounded
- Learned: Need to clean old timestamps

### Attempt 4: Token Bucket (25 min)
- Worked: Handles bursts and sustained rate
- Edge case: Fractional tokens need rounding
- Edge case: Multiple concurrent requests

Total spike: 90 minutes
Edge cases found: 6
Algorithm iterations: 4
Final approach: Token bucket (wouldn't have known without trying others)
```

---

## Advanced: Iterative Refinement

**Multiple Spike-Refine Cycles:**

```
Cycle 1: Spike → Discover edge cases → Refine → Working v1
         ↓
Cycle 2: Spike new features → Break existing code → Refine → Working v2
         ↓
Cycle 3: Spike performance → Find bottlenecks → Refine → Optimized v3
```

**Each cycle reveals new insights that couldn't have been designed upfront.**

---

## AI Collaboration Prompts

### Starting a Spike
```
I want to spike [feature/concept] to discover edge cases and learn how it works.

Help me build the messiest, fastest version possible. I don't care about:
- Clean code
- Perfect abstractions  
- Comprehensive error handling
- Best practices

I want to:
- Get something working in [time limit]
- Find out what breaks
- Learn the gotchas
- Understand the problem space

Let's code fast and sloppy!
```

### During Spike - When Things Break
```
This spike code broke when I tried [scenario]:

[Error/behavior description]

This is GOOD - I'm discovering edge cases. What does this teach us about
how to handle this properly in the clean version?
```

### Transitioning to Refine
```
I've finished spiking. Here's what I learned:

Working code: [paste spike]
Things that broke: [list failures]
Edge cases found: [list]
Surprises: [list]

Help me extract the good parts and design a clean version that handles
all these edge cases properly.
```

### Comparing Spike to Clean
```
Compare these two versions:

Spike (fast & messy): [code]
Clean (refined): [code]

What improved? What patterns emerged? What did the spike teach us that
we couldn't have designed upfront?
```

---

## Metrics: When Spike-and-Refine Works

**Success Indicators:**
- ✅ Found 3+ edge cases during spike that would have been bugs
- ✅ Changed approach during spike (learned what doesn't work)
- ✅ Clean version is simpler than spike (extracted essence)
- ✅ Total time less than "perfect first time" approach
- ✅ Higher confidence in clean solution

**Warning Signs (Spike Might Not Be Needed):**
- ⚠️ Problem is well-understood and routine
- ⚠️ No edge cases discovered (too simple or too familiar)
- ⚠️ Spike took longer than clean rewrite
- ⚠️ Just duplicating existing pattern

---

## Common Mistakes & Solutions

### Mistake 1: "Spike That Never Ends"
**Problem:** Keep refining spike instead of doing clean rewrite  
**Solution:** Strict time box (1-2 hours), then STOP and extract

### Mistake 2: "Skip the Extraction"
**Problem:** Jump straight to rewrite without analyzing what was learned  
**Solution:** Mandatory 30-minute extraction phase

### Mistake 3: "Spike in Production"
**Problem:** Spike code makes it to production  
**Solution:** Clear labeling, mandatory refine phase

### Mistake 4: "Afraid to Be Messy"
**Problem:** Try to write clean code during spike  
**Solution:** Explicit permission to be sloppy, focus on learning

### Mistake 5: "Not Breaking Things"
**Problem:** Don't actively try to break the spike  
**Solution:** Dedicated break-testing scenarios

---

## Integration with LSKv4.1 Pipeline

**Where This Fits:**

```yaml
phases:
  - definition
  - validation
  - risk_assessment
  - options_analysis
  
  - spike_exploration:    # NEW - Before full implementation
      purpose: "Discover edge cases and validate approach"
      time_box: "1-2 hours"
      outcome: "Edge cases documented, approach validated"
      
  - implementation:       # Clean implementation with spike learnings
      input: "Spike insights and edge case documentation"
      
  - integration
  - uat
  - certify
```

**Decision Tree:**

```
Need to implement something?
  ↓
Is this well-understood/routine?
  YES → Skip spike, implement directly
  NO → Continue
    ↓
Unfamiliar territory? Unknown edge cases?
  YES → Spike it! (1-2 hours)
  NO → Consider if spike would help
    ↓
After spike: Extract + Refine
    ↓
Implement clean version with confidence
```

---

## Philosophy: Embrace the Mess to Find the Order

> "You can't design the perfect solution until you understand the problem.  
> You can't understand the problem until you've tried to solve it.  
> So spike first, learn, then design."

**The Paradox of Perfect Code:**
- Trying to write perfect code from line 1 leads to overthinking
- Overthinking leads to wrong abstractions
- Wrong abstractions lead to rewrites
- Multiple rewrites anyway

**The Spike-and-Refine Reality:**
- Write messy code quickly
- Discover real edge cases and gotchas
- Extract learnings
- Write clean code with actual knowledge
- ONE informed rewrite beats multiple blind rewrites

---

## Summary: The Recipe

1. **Spike** (1-2 hours)
   - Code fast and messy
   - Find what breaks
   - Document failures

2. **Extract** (30 minutes)
   - What worked
   - What broke
   - What to keep/improve/redesign

3. **Refine** (1-2 hours)
   - Clean rewrite
   - Handle all edge cases
   - Apply lessons learned

4. **Compare** (15 minutes)
   - What did spike teach us?
   - What couldn't we have designed upfront?
   - ROI on the approach?

**Total Time:** 3-4 hours  
**Value:** Discovered edge cases + validated approach + confident clean implementation

**vs. "Perfect First Time":** 4-6+ hours + production bugs + lower confidence

---

**Remember:** It's not about writing messy code. It's about using messy code as a **learning tool** to write better clean code.

The spike is the tuition you pay to learn what you didn't know you didn't know.


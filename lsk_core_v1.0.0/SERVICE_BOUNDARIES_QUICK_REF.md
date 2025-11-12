# LSK Core v5.0 - Service Boundaries: Quick Reference
## Managing Integration Complexity in Multi-Service Architectures

---

## The Complexity Problem

### Integration Points Grow Exponentially

| Services | Potential Connections | Formula |
|----------|----------------------|---------|
| 2 | 1 | 2(1)/2 |
| 3 | 3 | 3(2)/2 |
| 5 | 10 | 5(4)/2 |
| 10 | 45 | 10(9)/2 |
| 20 | 190 | 20(19)/2 |

**Formula:** `N(N-1)/2` for bidirectional connections

**Your Insight:**
> "It can be easy to make an easy API call across systems but as complexity grows the communications and integration points square minus 1 or whatever it is so being clear about dependencies and defining a container per service is helpful"

---

## The Solution: Clear Boundaries

### Principle
```
One container per service + Clear inputs/outputs = Manageable complexity
```

### Three Rules
1. **Single Responsibility** - Each service does ONE thing well
2. **Explicit Dependencies** - Document what depends on what
3. **Clear APIs** - Define exact inputs and outputs

---

## Quick Service Definition

```yaml
service: document-processor

# What it does
purpose: "Extract text from documents"

# What it does NOT
not_responsible_for:
  - "Document storage"
  - "User authentication"
  - "UI rendering"

# Container
container:
  port: 8670
  health: "/health"

# Clear Inputs
inputs:
  - "POST /process (file) → { text, metadata }"
  - "env: CHROMADB_URL"

# Clear Outputs  
outputs:
  - "Returns: { document_id, text, metadata }"
  - "Side effect: Stores vectors in chromadb"

# Dependencies (keep ≤3)
depends_on:
  - chromadb (vector storage)
  - logging-service (audit)
```

---

## Real Example: DOCeater v2

### Service Architecture

```
api-gateway (8666)
  ↓
document-processor (8670) → chromadb (8630)
  ↓                            ↑
ai-chat-service (8668) ────────┘
  ↓                            ↑
logging-service (8651)         ↓
                            ollama (11437)
```

### Complexity Analysis
- **Services:** 6
- **Potential connections:** 15 (6×5/2)
- **Actual connections:** 6 (well-managed!)
- **Independence:** Each service deploys separately

### Why It Works
✅ Each service has clear purpose  
✅ APIs are well-defined  
✅ Dependencies are minimal (≤3 each)  
✅ No shared databases  
✅ One container per service

---

## Anti-Patterns to Avoid

### ❌ Shared Database
```
Service A ──┐
            ├──→ Database
Service B ──┘

Problem: Schema changes affect both services
```

### ❌ Chatty APIs
```
for each of 100 documents:
  call process_document(doc)  # 100 API calls!

Better:
call process_documents([docs])  # 1 API call
```

### ❌ Circular Dependencies
```
Service A → Service B
    ↑           ↓
    └── Service C

Problem: Can't deploy independently
```

---

## Service Independence Checklist

- [ ] **Single purpose** - Does ONE thing well
- [ ] **Own data** - Has its own database/storage
- [ ] **Clear API** - Inputs and outputs documented
- [ ] **≤3 dependencies** - Minimal upstream services
- [ ] **Version API** - Can evolve without breaking consumers
- [ ] **Health check** - `/health` endpoint exists
- [ ] **Deploy independently** - Doesn't require coordinated deployment
- [ ] **Test independently** - Can mock all dependencies

---

## Common Patterns

### Pattern 1: Request-Response
```
Client → Service A → Service B → Response
```
**When:** Synchronous operations, need immediate result

### Pattern 2: Event-Driven
```
Service A --[event]--> Queue --> Service B
```
**When:** Asynchronous operations, can process later

### Pattern 3: Shared Data Service
```
Service A ──┐
            ├──→ Data Service (chromadb, redis)
Service B ──┘
```
**When:** Multiple services need same data (vectors, cache)

---

## Dependency Rules

### ✅ Good Dependencies
- **≤3 per service** - Manageable
- **Clear API contract** - Documented
- **Versioned** - Can evolve independently
- **Health checked** - Can detect failures
- **Fallback strategy** - Degrades gracefully

### ❌ Bad Dependencies
- **>5 per service** - Too complex
- **Undocumented** - Unknown contract
- **Circular** - Can't deploy independently
- **Shared database** - Tight coupling
- **No fallback** - Cascading failures

---

## Integration Point Documentation

For each connection, document:

```yaml
from: "ai-chat-service"
to: "chromadb"
endpoint: "POST /collections/documents/query"
purpose: "Retrieve relevant document context for chat"
required: true
fallback: "Return chat response without document context"
sla:
  timeout: 1000ms
  retry: 3
```

---

## Quick Decision Tree

```
Need to call another service?
  ↓
Is it absolutely necessary?
  NO → Don't add dependency
  YES ↓
  
Can you use an event instead?
  YES → Use event-driven pattern
  NO ↓
  
Document the integration:
  - Purpose
  - API contract
  - Fallback strategy
  
Track complexity:
  - Count integration points
  - Ensure ≤3 dependencies per service
```

---

## Monitoring

### Per Service
- Request rate
- Error rate
- Response time (p95, p99)

### Integration Points
- Inter-service latency
- Failed calls between services
- Circuit breaker status

---

## Example: Adding New Service

### Bad Approach
```
New service needs:
- User data → calls user-service
- Auth → calls auth-service  
- Documents → calls document-service
- Vectors → calls chromadb
- Logs → calls logging-service
- Notifications → calls notification-service

Result: 6 dependencies! Too complex!
```

### Good Approach
```
New service needs:
- Core data → own database
- Vectors → chromadb (shared resource)
- Events → publishes to message queue

Result: 2 dependencies. Manageable.
Other services consume events independently.
```

---

## Summary

### The Problem
```
N services without boundaries = N(N-1)/2 chaotic connections
```

### The Solution
```
N services with clear boundaries = 2N-3 managed connections
```

### How
1. **One container per service**
2. **Clear inputs and outputs**
3. **≤3 dependencies each**
4. **Document every integration point**

### Result
```
Manageable complexity even as system scales
```

---

## Real Numbers

### Without Boundaries (DOCeater example if poorly designed)
- 8 services
- Potential: 28 connections
- Actual: 28 (everyone calling everyone)
- Status: **Unmanageable chaos**

### With Boundaries (DOCeater actual)
- 8 services
- Potential: 28 connections
- Actual: 6 connections
- Status: **Well-managed architecture**

**Reduction: 78% fewer integration points to manage!**

---

## Quick Reference Card

| Concept | Rule | Example |
|---------|------|---------|
| **Service Size** | Single responsibility | ✅ "Document processor"<br>❌ "Document + Auth + Storage" |
| **Dependencies** | ≤3 per service | ✅ chromadb + logging<br>❌ 6 different services |
| **Data** | Own your data | ✅ Own database<br>❌ Shared tables |
| **APIs** | Versioned + Documented | ✅ `/v1/process`<br>❌ Breaking changes |
| **Deployment** | Independent | ✅ Deploy anytime<br>❌ Coordinated deploys |

---

**Remember:** "It can be easy to make an easy API call" - but each call adds to N(N-1)/2 complexity. Be intentional about every integration point.


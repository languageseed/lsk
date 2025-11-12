# LSKv4 Seeds & Extensions

This directory contains optional templates and patterns that extend the core LSKv4 functionality. These are **copy-ready templates** that you can use when the basic templates need more specialized structure.

## Enhanced Context Packs (`context_packs/`)

Specialized context pack templates for different types of AI conversations:

### **`context.performance.template.yaml`**
- **Purpose**: Performance optimization tasks
- **Use When**: Slow loading, memory issues, scalability concerns
- **Example Direction**: Includes performance metrics, bottleneck analysis patterns
- **Key Features**: Performance data section, optimization-specific governance

### **`context.debug.template.yaml`**
- **Purpose**: Troubleshooting and bug fixing
- **Use When**: Errors, unexpected behavior, system failures
- **Example Direction**: Error evidence structure, reproduction steps format
- **Key Features**: Issue tracking, investigation methodology

### **`context.integration.template.yaml`**
- **Purpose**: API and service integration projects
- **Use When**: Connecting external services, building adapters
- **Example Direction**: Endpoint documentation, data contract patterns
- **Key Features**: Authentication flows, error scenarios, rate limiting

### **`context.refactor.template.yaml`**
- **Purpose**: Code improvement and restructuring
- **Use When**: Legacy code cleanup, pattern application, quality improvement
- **Example Direction**: Current issues analysis, target pattern examples
- **Key Features**: Quality metrics tracking, refactoring constraints

## Core Template Enhancements

### **Updated `context.pack.yaml`**
- Added concrete examples in all sections
- Shows the pattern without prescribing content
- Non-prescriptive but provides clear direction
- Better prompt ID guidance and supplemental prompt examples

### **New `conversation.checkpoint.template.md`**
- Track AI conversation state and progress
- Record decisions made during conversations
- Monitor conversation quality and effectiveness
- Plan next steps and context preparation

### **New Recipe Collection (`recipes/`)**
Conversation-focused recipes for structuring AI interactions:

- **`debugging-conversation.recipe.md`**: 5-phase debugging methodology
- **`architecture-review.recipe.md`**: Systematic architecture analysis 
- **`requirements-gathering.recipe.md`**: Complete requirements methodology

### **Enhanced Prompts (`../contracts/prompts.yaml`)**
Added requirements and example generation prompts:

- **`requirements-example-gen-001`**: Generate concrete examples from requirements
- **`acceptance-criteria-gen-001`**: Convert examples to testable criteria

### **New `workflows.md`**
Visual Mermaid diagrams showing:
- Core LSKv4 pipeline flow
- AI conversation loops
- Context pack usage patterns
- Recipe-based conversation flows
- Phase progression workflows

## Usage Patterns

### **For Specialized Conversations**
1. **Copy** the relevant context pack template
2. **Fill** with your specific details using example direction
3. **Paste** relevant sections to AI
4. **Follow** the conversation patterns suggested

### **For General Structure**
1. **Use** enhanced `context.pack.yaml` as base
2. **Reference** example patterns for guidance
3. **Apply** conversation recipes for specific dialogue types
4. **Track** progress with conversation checkpoints

### **For Requirements Work**
1. **Start** with `requirements-gathering.recipe.md`
2. **Use** `requirements-example-gen-001` prompt for concrete examples
3. **Convert** with `acceptance-criteria-gen-001` for testable criteria
4. **Document** in enhanced context pack format

## Design Philosophy

### **Non-Prescriptive + Example Direction**
- Templates show **patterns** without dictating **content**
- Examples illustrate **structure** without constraining **specifics**
- Comments provide **guidance** without enforcing **rules**

### **File-Based & Copy-Friendly**
- Everything remains **pure templates**
- No scripts, CLIs, or automation
- **Self-contained** and **portable**
- Easy to **customize** and **adapt**

### **Conversation-Focused**
- Optimized for **AI dialogue**, not automation
- Helps **structure conversations** effectively
- Provides **memory aids** for context continuity
- Supports **iterative improvement** of AI interactions

## Migration from Basic Templates

### **If Using Basic `context.pack.yaml`**
- Enhanced version maintains all existing structure
- Added example comments provide guidance
- No breaking changes to existing usage

### **If Using `recipes.md`**
- New recipe collection provides more detailed conversation flows
- Original recipes remain valid for quick reference
- New recipes add systematic methodology

### **Adding to Existing Projects**
1. Copy desired templates to your project
2. Fill templates with your project specifics
3. Use alongside existing LSKv4 workflow
4. Gradually adopt conversation patterns

## Template Selection Guide

| Task Type | Context Pack | Recipe | Key Benefit |
|-----------|-------------|--------|-------------|
| Bug Fixing | `context.debug.template.yaml` | `debugging-conversation.recipe.md` | Systematic troubleshooting |
| Performance | `context.performance.template.yaml` | General recipes | Metrics-focused optimization |
| New Features | Enhanced `context.pack.yaml` | `requirements-gathering.recipe.md` | Complete requirements capture |
| Architecture | Enhanced `context.pack.yaml` | `architecture-review.recipe.md` | Structured design analysis |
| Integration | `context.integration.template.yaml` | General recipes | API-focused documentation |
| Refactoring | `context.refactor.template.yaml` | General recipes | Quality improvement tracking |

Remember: These are **enhancements**, not **requirements**. Use what helps your specific conversation needs while maintaining LSKv4's core simplicity.
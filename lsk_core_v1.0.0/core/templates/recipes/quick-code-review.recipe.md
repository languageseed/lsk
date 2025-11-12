# ⚡ Quick Code Review Recipe
**Purpose**: Get AI feedback on code quality and improvements
**Time**: 10-15 minutes

## **Simple 3-Step Process**

### **Step 1: Prepare Code Context (2 minutes)**
```yaml
# Quick context structure:
code_to_review: |
  [paste your code here]

review_focus:
  # Example: "Check for performance issues"
  # Example: "Verify error handling" 
  # Example: "Improve readability"
  - ""

current_concerns:
  # Example: "Function is getting too long"
  # Example: "Not sure about error handling"
  - ""
```

### **Step 2: AI Review Request (1 minute)**
```
Please review this code for quality and suggest improvements:

Code:
[paste your code]

Focus Areas:
[paste your review_focus items]

Specific Concerns:
[paste your current_concerns]

Please provide:
1. Overall assessment
2. Specific improvement suggestions
3. Any potential issues or bugs
4. Best practice recommendations
```

### **Step 3: Follow-up Questions (5-10 minutes)**
Based on AI feedback, ask targeted follow-ups:

**For Performance Issues:**
```
"You mentioned [performance concern]. Can you show me how to optimize this specific part?"
```

**For Code Structure:**
```
"You suggested [structural change]. Can you refactor this function to demonstrate?"
```

**For Best Practices:**
```
"You mentioned [best practice]. Can you show the improved version with this applied?"
```

## **Common Review Focuses**

### **🚀 Performance Review**
```yaml
review_focus:
  - "Database query efficiency"
  - "Loop optimization opportunities"
  - "Memory usage patterns"
  - "Async/await usage"
```

### **🛡️ Security Review**
```yaml
review_focus:
  - "Input validation and sanitization"
  - "Authentication/authorization checks"
  - "Sensitive data handling"
  - "Error message information leakage"
```

### **🧹 Code Quality Review**
```yaml
review_focus:
  - "Function length and complexity"
  - "Variable naming clarity"
  - "Code duplication"
  - "Error handling completeness"
```

### **🔧 Maintainability Review**
```yaml
review_focus:
  - "Function single responsibility"
  - "Code documentation"
  - "Test coverage gaps"
  - "Dependency management"
```

## **Quick Templates by Language**

### **JavaScript/TypeScript**
```
Review this TypeScript code for:
- Type safety improvements
- Async/await best practices  
- Error handling patterns
- Performance optimizations

[code here]
```

### **Python**
```
Review this Python code for:
- Pythonic patterns and idioms
- Exception handling
- Performance optimizations
- Code organization

[code here]
```

### **React Components**
```
Review this React component for:
- Hook usage and dependencies
- Re-render optimization
- Props and state management
- Accessibility considerations

[code here]
```

## **Effective Follow-up Patterns**

### **When AI Suggests Refactoring:**
```
"Can you show me the refactored version of this function with your suggested improvements?"
```

### **When AI Identifies Issues:**
```
"You identified [issue]. What's the safest way to fix this without breaking existing functionality?"
```

### **When AI Recommends Patterns:**
```
"You suggested using [pattern]. Can you implement this pattern in my specific context?"
```

## **Time-Saving Tips**

**✅ Do:**
- Focus on one specific area per review
- Include context about what the code does
- Ask for concrete examples, not just descriptions
- Request specific fixes, not just problem identification

**❌ Don't:**
- Submit huge files without focus areas
- Ask for general "make it better" feedback
- Ignore AI suggestions without understanding them
- Review code without specifying what you're concerned about

## **Quick Quality Indicators**

**Good Review Conversation:**
- AI provides specific, actionable suggestions
- Recommendations include code examples
- Issues are prioritized by importance
- Improvements are explained with reasoning

**Poor Review Conversation:**
- Vague suggestions without examples
- Generic advice that could apply to any code
- No prioritization of suggested changes
- Recommendations without clear implementation guidance

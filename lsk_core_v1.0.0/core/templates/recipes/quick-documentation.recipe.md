# 📚 Quick Documentation Recipe
**Purpose**: Generate clear, useful documentation for code or features
**Time**: 10-15 minutes

## **Simple 3-Step Process**

### **Step 1: Identify Documentation Type (1 minute)**
Choose your documentation focus:
- **📋 README** - Project overview and setup
- **🔧 API Docs** - Endpoint documentation  
- **💻 Code Docs** - Function/class documentation
- **📖 Feature Guide** - How to use a feature
- **🚀 Setup Guide** - Installation and configuration

### **Step 2: Prepare Context (3-5 minutes)**
```yaml
# Quick documentation context:
documentation_type: "README|API|Code|Feature|Setup"

target_audience: 
  # Example: "New developers joining the team"
  # Example: "Frontend developers using this API"
  # Example: "End users of the application"

what_to_document:
  # Example: "User authentication service and its methods"
  # Example: "Payment processing workflow"
  # Example: "Dashboard component and its props"

current_pain_points:
  # Example: "New developers don't know how to set up the project"
  # Example: "API usage is unclear, lots of support questions"
  - ""
```

### **Step 3: Generate Documentation (5-10 minutes)**
```
Create [documentation_type] documentation for: [what_to_document]

Target Audience: [target_audience]

Current Issues: [current_pain_points]

Please include:
1. Clear overview/purpose
2. Practical examples
3. Common use cases
4. Troubleshooting tips

Make it concise but comprehensive for developers who need to understand and use this quickly.
```

## **Documentation Templates by Type**

### **📋 README Documentation**
```
Create a README for this project:

Project: [brief description]
Tech Stack: [languages, frameworks, tools]
Main Features: [key functionality]

Include:
- Quick start guide (install and run in 5 minutes)
- Project structure overview
- Common development tasks
- Contributing guidelines
- Troubleshooting section

Target audience: New developers joining the team.
```

### **🔧 API Documentation**
```
Document this API endpoint:

[paste API endpoint code or specification]

Include:
- Purpose and use cases
- Request/response examples with real data
- All possible error responses
- Authentication requirements
- Rate limiting information

Target audience: Frontend developers who will integrate with this API.
```

### **💻 Code Documentation**
```
Create documentation for this code:

[paste code - functions, classes, or modules]

Include:
- Purpose and overview
- Parameter descriptions with examples
- Return value explanations
- Usage examples
- Common gotchas or important notes

Target audience: Developers who will use or maintain this code.
```

### **📖 Feature Guide**
```
Create user documentation for this feature:

Feature: [description of feature]
User Interface: [brief description of UI]
Use Cases: [when users would need this]

Include:
- Step-by-step usage instructions
- Screenshots or examples where helpful
- Common user questions
- Troubleshooting guide

Target audience: End users of the application.
```

### **🚀 Setup Guide**
```
Create setup documentation for:

Project: [project name and type]
Environment: [development/production/both]
Dependencies: [key requirements]

Include:
- Prerequisites and system requirements
- Step-by-step installation instructions
- Configuration options
- Verification steps (how to know it's working)
- Common setup issues and solutions

Target audience: Developers setting up the project for the first time.
```

## **Documentation Quality Prompts**

### **Improve Clarity**
```
Review this documentation for clarity:

[paste documentation]

Make it clearer by:
- Simplifying complex explanations
- Adding concrete examples
- Breaking down long paragraphs
- Using bullet points where appropriate
```

### **Add Examples**
```
Enhance this documentation with practical examples:

[paste documentation]

For each major concept, provide:
- Real-world usage example
- Sample input/output
- Common variations
```

### **User-Focused Review**
```
Review this documentation from a user's perspective:

[paste documentation]

Target User: [describe user type]

Improve it for usability:
- Are the most important things first?
- Is it easy to scan and find information?
- Are there clear next steps?
- What questions would users still have?
```

## **Quick Documentation Patterns**

### **Function Documentation**
```
For this function: [function name and signature]

Create documentation that includes:
- One-line summary
- Detailed description
- Parameter explanations with types and examples
- Return value description
- Usage example
- Any side effects or important notes
```

### **Component Documentation**
```
For this UI component: [component name]

Create documentation that includes:
- Component purpose and when to use it
- Props with types, descriptions, and default values
- Usage examples (basic and advanced)
- Styling and customization options
- Accessibility considerations
```

### **Service/Class Documentation**
```
For this service/class: [name and purpose]

Create documentation that includes:
- Class purpose and responsibilities
- Constructor parameters
- Public method descriptions
- Usage patterns and examples
- Configuration options
- Error handling approach
```

## **Time-Saving Tips**

**✅ Do:**
- Start with the most important use case
- Include one complete, working example
- Write for your target audience specifically
- Ask AI to review and improve generated docs

**❌ Don't:**
- Try to document everything at once
- Write without considering who will read it
- Include implementation details in user docs
- Generate docs without examples

**Follow-up Questions:**
```
"Is this documentation clear for someone who's never seen this code before?"

"What important information is missing from this documentation?"

"How can I make this more scannable and easier to find information?"
```

## **Documentation Maintenance**

**Keep It Current:**
```
"Review this documentation against the current code and update any outdated information:

[paste documentation and relevant code]"
```

**Validate Usefulness:**
```
"From a developer's perspective, what would make this documentation more helpful?

[paste documentation]"
```

# LSK Core v5.0 Quick Start Guide
**Get productive with AI-assisted development in 5 minutes**

## **🚀 What is LSK Core v5.0?**
LSK Core v5.0 is a **proven methodology** for AI-assisted development. It's a collection of **validated templates, recipes, and patterns** that help you build better software with AI.

## **⚡ 2-Minute First Task**

### **Step 1: Copy a Template (30 seconds)**
```bash
# Copy the basic context pack template
cp lsk_core_v5.0/core/templates/context.pack.yaml my-task.yaml
```

### **Step 2: Fill the Basics (90 seconds)**
Edit `my-task.yaml` and fill these key sections:
```yaml
objective:
  problem_statement: |
    # What you're building - be specific!
    Build a user login form with email/password validation
  
  acceptance_criteria:
    # How you'll know it's done
    - "Form validates email format before submission"
    - "Password must be at least 8 characters"
    - "Shows clear error messages for invalid input"

context:
  code_targets:
    - path: "src/components/LoginForm.tsx"
      reason: "Main component to implement"

prompt_inputs:
  primary_prompt_id: "component-gen-001"  # For UI components
```

### **Step 3: Use with AI (30 seconds)**
Copy/paste this to your AI:
```
I'm using LSK Core v5.0 for structured development. Here's my context pack:

[paste your filled my-task.yaml]

Please generate the login form component following the specified requirements.
```

**That's it!** You just used LSK Core v5.0 to structure an AI conversation.

## **🎯 Choose Your Path**

### **I Want to Build Something New**
→ Use: `context.pack.yaml` + Recipe: `requirements-gathering.recipe.md`
→ Time: 30-60 minutes for complete feature

### **I Need to Fix a Bug** 
→ Use: `context.debug.template.yaml` + Recipe: `debugging-conversation.recipe.md`
→ Time: 15-30 minutes for most issues

### **I Want to Optimize Performance**
→ Use: `context.performance.template.yaml`
→ Time: 20-40 minutes for optimization

### **I Need to Integrate an API**
→ Use: `context.integration.template.yaml`
→ Time: 30-45 minutes for integration

### **I Want to Clean Up Code**
→ Use: `context.refactor.template.yaml`
→ Time: 20-30 minutes for refactoring

## **📋 Template Quick Reference**

| Template | Best For | Key Benefit |
|----------|----------|-------------|
| `context.pack.yaml` | General tasks | Flexible, works for anything |
| `context.debug.template.yaml` | Bug fixing | Systematic troubleshooting |
| `context.performance.template.yaml` | Optimization | Performance-focused structure |
| `context.integration.template.yaml` | API work | Integration-specific sections |
| `context.refactor.template.yaml` | Code cleanup | Quality improvement tracking |
| `context.security.template.yaml` | Security/compliance | Threat modeling and controls |

## **💡 Pro Tips for Better AI Conversations**

### **✅ Do This:**
- **Be specific** in your problem statement
- **Include concrete examples** in acceptance criteria
- **Share relevant code snippets** with context
- **Use the example patterns** in templates as guidance

### **❌ Avoid This:**
- Vague requirements like "make it better"
- Sharing large code files without focus areas
- Skipping the acceptance criteria section
- Ignoring the example direction in templates

## **🔄 The LSK Core v5.0 Loop**
```
1. Copy Template → 2. Fill Context → 3. AI Conversation → 4. Update Progress → Repeat
```

Each conversation builds on the previous one, with templates helping you maintain context and track decisions.

## **🏁 Common First Tasks**

### **"I need a React component"**
- Template: `context.pack.yaml`
- Prompt: `component-gen-001`
- Time: 10-15 minutes

### **"My API is too slow"**
- Template: `context.performance.template.yaml`
- Focus: Database queries or rendering
- Time: 20-30 minutes

### **"Something's broken and I don't know why"**
- Template: `context.debug.template.yaml`
- Recipe: `debugging-conversation.recipe.md`
- Time: 15-45 minutes

### **"I need to connect to a third-party service"**
- Template: `context.integration.template.yaml`
- Focus: Authentication and error handling
- Time: 30-45 minutes

## **📚 When You're Ready for More**

### **Systematic Approaches**
- **Requirements gathering**: Use `requirements-gathering.recipe.md`
- **Architecture review**: Use `architecture-review.recipe.md`
- **Full feature development**: Follow the 9-phase LSK Core v5.0 pipeline

### **Advanced Features**
- **Conversation checkpoints**: Track AI dialogue state
- **Visual workflows**: See `workflows.md` for process diagrams
- **Phase management**: Use `phase.plan.yaml` for complex projects

### **Team Usage**
- Share filled context packs with team members
- Use conversation checkpoints for handoffs
- Document decisions in LSKv4 checkpoint format

## **🤔 Need Help?**

### **"Which template should I use?"**
→ See template selection guide above, or start with `context.pack.yaml`

### **"The AI doesn't understand what I want"**
→ Add more specific examples to your context pack

### **"My conversations are getting confusing"**
→ Use `conversation.checkpoint.template.md` to track state

### **"I'm working on a complex feature"**
→ Use the full LSK Core v5.0 pipeline with phase plans

## **🎉 You're Ready!**

LSK Core v5.0 is designed to **grow with you**:
- Start simple with basic templates
- Add recipes when you need structured approaches
- Use advanced features for complex projects
- Adapt everything to your specific needs

**Remember**: LSK Core v5.0 is **non-prescriptive**. Use what helps, ignore what doesn't, and adapt everything to your workflow.

Happy coding! 🚀

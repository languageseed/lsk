# 🌐 Quick API Design Recipe
**Purpose**: Design and validate API endpoints with AI assistance
**Time**: 15-20 minutes

## **Simple 4-Step Process**

### **Step 1: Define API Purpose (3 minutes)**
```yaml
# Quick API context:
api_purpose: 
  # Example: "User management for blog platform"
  # Example: "Payment processing for e-commerce"
  # Example: "File upload and organization"
  
main_operations:
  # Example: "Create user, Get user profile, Update user, Delete user"
  # Example: "Process payment, Get payment status, Refund payment"
  - ""

data_entities:
  # Example: "User (id, email, name, role), Profile (bio, avatar, preferences)"
  # Example: "Payment (id, amount, status, customer), Transaction (id, type, timestamp)"
  - ""
```

### **Step 2: Generate API Design (5 minutes)**
```
Design REST API endpoints for: [api_purpose]

Main Operations: [list operations]
Data Entities: [list entities]

Please provide:
1. Endpoint paths and HTTP methods
2. Request/response schemas
3. Status codes and error responses
4. Authentication requirements

Follow REST best practices and include examples.
```

### **Step 3: Validate Design (5 minutes)**
```
Review this API design for:
- RESTful consistency
- Error handling completeness
- Security considerations  
- Usability for frontend developers

[paste the API design]

What improvements would you suggest?
```

### **Step 4: Implementation Guidance (5 minutes)**
```
For this API endpoint: [specific endpoint]

Please provide:
1. Implementation skeleton/pseudocode
2. Validation requirements
3. Error scenarios to handle
4. Testing approach

Focus on [your technology stack, e.g., "Node.js/Express" or "Python/FastAPI"]
```

## **Common API Types**

### **🔐 Authentication API**
```yaml
api_purpose: "User authentication and authorization"
main_operations:
  - "Login with credentials"
  - "Refresh authentication token"
  - "Logout and invalidate session"
  - "Password reset flow"
data_entities:
  - "User (id, email, password_hash, role)"
  - "Session (token, user_id, expires_at)"
```

### **📝 CRUD Resource API**
```yaml
api_purpose: "Blog post management"
main_operations:
  - "Create new post"
  - "Get post by ID"
  - "List posts with pagination"
  - "Update existing post"
  - "Delete post"
data_entities:
  - "Post (id, title, content, author_id, created_at, published)"
  - "Author (id, name, email)"
```

### **💳 Payment API**
```yaml
api_purpose: "Payment processing"
main_operations:
  - "Create payment intent"
  - "Confirm payment"
  - "Get payment status"
  - "Process refund"
data_entities:
  - "Payment (id, amount, currency, status, customer_id)"
  - "Refund (id, payment_id, amount, reason)"
```

### **📁 File Management API**
```yaml
api_purpose: "File upload and organization"
main_operations:
  - "Upload file"
  - "Get file metadata"
  - "Download file"
  - "Organize files in folders"
data_entities:
  - "File (id, name, size, type, upload_date, folder_id)"
  - "Folder (id, name, parent_id, user_id)"
```

## **API Design Validation Checklist**

### **REST Consistency**
```
Ask AI: "Does this API follow REST conventions?
- Are HTTP methods used correctly?
- Are resource names plural and noun-based?
- Is the URL structure hierarchical and logical?"
```

### **Error Handling**
```
Ask AI: "Are error responses comprehensive?
- Do all endpoints return appropriate status codes?
- Are error messages helpful for debugging?
- Is error response format consistent?"
```

### **Security**
```
Ask AI: "What security considerations are missing?
- Authentication requirements for each endpoint
- Input validation and sanitization
- Rate limiting considerations
- Sensitive data protection"
```

### **Developer Experience**
```
Ask AI: "How can we improve the developer experience?
- Request/response examples for each endpoint
- Clear documentation of required fields
- Consistent naming conventions
- Helpful error messages"
```

## **Technology-Specific Prompts**

### **Node.js/Express**
```
Generate Express.js route handlers for this API design:
[paste API design]

Include:
- Middleware for validation and authentication
- Error handling with proper status codes
- Request/response typing (if using TypeScript)
```

### **Python/FastAPI**
```
Create FastAPI endpoints for this API design:
[paste API design]

Include:
- Pydantic models for request/response validation
- Proper HTTP exception handling
- OpenAPI documentation examples
```

### **Spring Boot/Java**
```
Implement Spring Boot REST controllers for:
[paste API design]

Include:
- Request/response DTOs
- Validation annotations
- Exception handling with @ExceptionHandler
```

## **Quick Implementation Tips**

**Start Small:**
- Design 2-3 core endpoints first
- Get feedback before expanding
- Implement one endpoint completely before moving to next

**Focus on Consistency:**
- Use consistent naming patterns
- Standardize error response format
- Apply same authentication approach across endpoints

**Plan for Growth:**
- Design URLs that can accommodate future features
- Consider versioning strategy early
- Plan pagination for list endpoints

**Test Early:**
- Design test cases alongside API design
- Include both success and error scenarios
- Consider edge cases and boundary conditions

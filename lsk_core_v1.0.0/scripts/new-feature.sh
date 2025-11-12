#!/bin/bash
# LSKv4 New Feature Helper
# Quickly set up files for a new feature

if [ $# -eq 0 ]; then
    echo "Usage: ./scripts/new-feature.sh <feature-name>"
    echo "Example: ./scripts/new-feature.sh user-auth"
    exit 1
fi

FEATURE_NAME="$1"
SAFE_NAME=$(echo "$FEATURE_NAME" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')
DATE=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
TODAY=$(date -u +"%Y-%m-%d")

echo "🚀 Setting up LSKv4 files for feature: $FEATURE_NAME"
echo "================================================"

# Create context pack
CONTEXT_FILE="${SAFE_NAME}-context.yaml"
cat > "$CONTEXT_FILE" << EOF
# Context Pack - $FEATURE_NAME

metadata:
  task_id: "$(echo "$SAFE_NAME" | tr '[:lower:]' '[:upper:]')"
  title: "Implement $FEATURE_NAME"
  owner: "$(whoami)"
  created_at: "$DATE"
  updated_at: "$DATE"
  notes: []

objective:
  problem_statement: |
    # TODO: Describe what you're building and why
  constraints:
    - "TODO: Add technical constraints"
    - "TODO: Add business constraints"
  acceptance_criteria:
    - "TODO: Define success criteria"

context:
  code_targets:
    - path: "src/"
      reason: "Main implementation area"
      include:
        - "TODO: Specific files/functions"
      exclude:
        - "TODO: Files to ignore"
  diffs: []
  glossary: []
  dependencies: []

prompt_inputs:
  task_kind: "generate"
  primary_prompt_id: "service-gen-neutral-001"
  supplemental_prompts: []
  examples: []

outputs:
  expected_artifacts:
    - name: "Main Implementation"
      path: "src/$SAFE_NAME/"
      description: "Core feature implementation"
  review_checklist:
    - "Functionality works as expected"
    - "Error handling implemented"
    - "Tests added"
    - "Documentation updated"
EOF

# Create phase plan
PLAN_FILE="${SAFE_NAME}-plan.yaml"
cat > "$PLAN_FILE" << EOF
# LSKv4 Phase Plan - $FEATURE_NAME

pipeline:
  mode: "strict"
  contract_name: "$SAFE_NAME"

current_phase: "definition"
next_phase: "validation"

phases:
  definition:
    status: "in_progress"
    started: "$DATE"
    checkpoint: null
  validation:
    status: "not_started"
    started: null
    checkpoint: null
  implementation:
    status: "not_started"
    started: null
    checkpoint: null
  integration:
    status: "not_started"
    started: null
    checkpoint: null
  uat:
    status: "not_started"
    started: null
    checkpoint: null
  certify:
    status: "not_started"
    started: null
    checkpoint: null

checkpoints: {}
blockers: []
notes: []
EOF

# Create initial checkpoint
CHECKPOINT_FILE="checkpoint@${SAFE_NAME}_definition_${TODAY}.md"
cat > "$CHECKPOINT_FILE" << EOF
# Checkpoint: $FEATURE_NAME - Definition

## Metadata
- **Contract:** $SAFE_NAME
- **Phase:** definition
- **Status:** in_progress
- **Date:** $TODAY
- **Author:** $(whoami)

## Summary
<!-- Brief summary of the work completed in this phase -->

## Key Deliverables
<!-- List of completed deliverables -->
- Contract specification (in progress)
- Interface definitions (pending)
- Scope boundaries (pending)

## Decisions Made
<!-- Document important decisions made during this phase -->
- 

## Challenges/Blockers
<!-- Document any challenges or blockers encountered -->
- 

## Next Steps
<!-- Clear description of what needs to happen next -->
- Complete problem statement and acceptance criteria
- Define interfaces and contracts
- Move to validation phase

## References
<!-- Links to relevant documents, code, or other resources -->
- Context pack: $CONTEXT_FILE
- Phase plan: $PLAN_FILE
EOF

echo ""
echo "✅ Created files:"
echo "   📄 $CONTEXT_FILE (fill this out first)"
echo "   📊 $PLAN_FILE"
echo "   📝 $CHECKPOINT_FILE"
echo ""
echo "🎯 Next steps:"
echo "   1. Edit $CONTEXT_FILE with your requirements"
echo "   2. Use this prompt with your AI:"
echo ""
echo "   I'm using LSKv4 for structured development. Here's my context pack:"
echo "   [paste contents of $CONTEXT_FILE]"
echo ""
echo "   Please help me refine the requirements and move to validation phase."
echo ""

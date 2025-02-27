# TDX 2025
TDX 2025 - Good Apex Programming Recipes for an Agentic World

For each of our three recipes, we have created two branches: one with a good implementation and one with a bad implementation:

Recipe 1 - One Object - Multiple Triggers
- Bad Implementation: One-Object,-Multiple-Triggers-(Bad-Implentation)
- Good Implementation: One-Object,-Multiple-Triggers-(Good-Implentation)

Recipe 2 - Validations on Before vs. After
- Bad Implementation: Validations-on-Before-vs.-After-triggers-(Bad-Implementation)
- Good Implementation: Validations-on-Before-vs.-After-triggers-(Good-Implementation)

Recipe 3 - Bypassing validations on triggers
- Bad Implementation: Bypassing-validations-on-triggers-(Bad-Implementation)
- Good Implementation: Bypassing-validations-on-triggers-(Good-Implementation)

Notes:

Recipe 1 and 2: The order in which triggers execute cannot be guaranteed, leading to potential behavioral variations across environments.

Recipe 3: We need to add a manual step in the process. This step should execute a custom action, and this custom action should use the ApplyDiscount class.

Trailhead Project: https://trailhead.salesforce.com/content/learn/projects/quick-start-einstein-copilot?trail_id=drive-productivity-with-einstein-ai
Salesforce Documentation: https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_triggers.htm


---
description: Compare current branch with main/master branch for code review
allowed-tools: Bash(git *)
---

Please perform a code review by comparing the current branch with the base branch (origin/main, origin/master, main, or master - whichever exists).

First, determine the correct base branch by checking:
1. If `origin/main` exists, use it
2. If `origin/master` exists, use it  
3. If `main` exists locally, use it
4. If `master` exists locally, use it
5. Otherwise, show an error

Then show:
1. A summary of commits that differ between current branch and base
2. Files that have been changed
3. A detailed diff of the changes

Use git commands to gather this information and present it in a clear, organized way for code review purposes.

When reviewing code, prioritize focusing on the changes made in this branch, but if other issues are discovered in the modified code, include them in the code review as well.

## Issue Reporting Format

For any issues found during code review, organize by file and provide:

1. **File and Line Reference**: `filename:line_number`
2. **Issue Description**: Brief explanation of the problem
3. **Current Code**: Show the problematic code snippet
4. **Suggested Fix**: Provide a diff-style suggestion with explanation
5. **Reasoning**: Explain why this change improves the code

### Formatting Guidelines:
- Group all issues by file
- Use horizontal separators between files: `---`
- Use issue separators within files: `━━━`
- Start each file section with a clear file header

### Example Format:
```
## 📁 src/utils/helper.js

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

**Issue at line 42**

Problem: Missing null check could cause runtime error

Current code:
```javascript
function processUser(user) {
    return user.name.toUpperCase();
}
```

Suggested fix:
```diff
 function processUser(user) {
+    if (!user || !user.name) {
+        return '';
+    }
     return user.name.toUpperCase();
 }
```

Explanation: Added null/undefined checks to prevent TypeError when `user` or `user.name` is null/undefined. Returns empty string as fallback value.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

**Issue at line 58**

Problem: [Next issue description]
[... format continues for additional issues in same file ...]

---

## 📁 src/components/Button.jsx

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

**Issue at line 15**

Problem: [Issue description]
[... format continues ...]
```

## Interactive Review Workflow

Instead of showing all issues at once, present them one by one for interactive review:

### 1. Issue-by-Issue Review Process
For each issue found during code review:

1. **Display the issue** using the standard format:
   - File and line reference
   - Problem description
   - Current code snippet
   - Suggested fix with diff
   - Explanation

2. **Ask for user decision** with clear options:
   ```
   Would you like me to apply this suggestion?
   - Type 'apply' to implement this fix
   - Type 'skip' to continue to the next issue
   - Type 'stop' to end the review process
   ```

3. **If user chooses 'apply':**
   - Use the Edit tool to implement the suggested changes
   - Confirm the change was applied: "✅ Applied fix to [filename:line]"
   - Track this as "APPLIED" for the saved review
   - Continue to next issue

4. **If user chooses 'skip':**
   - Track this as "SKIPPED" for the saved review
   - Continue to next issue without making changes

5. **If user chooses 'stop':**
   - Track remaining issues as "NOT REVIEWED" for the saved review
   - End the interactive review process
   - Proceed to save option

### 2. Post-Review Save Option
After all issues have been reviewed (or user chooses 'stop'):

Ask: "Would you like me to save this code review to a file for future reference?"
- **Type 'yes'** - Save the review to `ai-code-review-[timestamp].md`
- **Type 'no'** - End the review session

### 3. Review Completion Summary
After the interactive session, provide:
- Number of issues found
- Number of fixes applied
- Number of issues skipped
- Location of saved review file (if applicable)

### Code Review File Format:
```markdown
# AI Code Review - [Branch Name]

**Generated:** [Full timestamp]  
**Base Branch:** [base branch name]  
**Review Branch:** [current branch name]  
**Commits Reviewed:** [commit range]

## Review Statistics
- **Issues Found:** [total number]
- **Fixes Applied:** [number applied]  
- **Issues Skipped:** [number skipped]
- **Not Reviewed:** [number not reviewed]

## Summary
[Brief summary of changes and overall assessment]

## Files Changed
[List of modified files]

## Issues and Actions

### 📁 [filename]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

**Issue at line [X] - [STATUS: APPLIED/SKIPPED/NOT REVIEWED]**

Problem: [Issue description]

Current code:
```[language]
[Current code snippet]
```

Suggested fix:
```diff
[Diff with changes]
```

Explanation: [Reasoning for the change]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

---
*Generated by Claude Code Review Assistant*
```

### Implementation Notes:
- Use `date +"%Y%m%d-%H%M%S"` to generate timestamps
- Save the file to the git repository root (use `git rev-parse --show-toplevel` to find it)
- Include proper markdown formatting for readability
- Add the review file to .gitignore suggestions if it doesn't exist
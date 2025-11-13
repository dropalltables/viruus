+++
title = "Test Email Draft"
date = "2025-11-12T17:13:40-08:00"
description = "Testing the new email system with drafts, images, and footnotes."
draft = "true"
tags = ["testing","email"]
+++

## Testing the Email System

This is a test blog post to verify the new email functionality[^1]. The system should:

1. Send this to the **test segment** when pushed as a draft
2. Include proper image paths
3. Handle footnotes correctly

### Image Test

Here's an image that should work in the email:

<img src="/images/favicon.png" alt="Favicon test" style="width: 100px;" />

### Feature List

- Draft emails go to test segment
- Published emails go to production segment
- Images use absolute URLs
- Footnotes work without anchor links[^2]

### Conclusion

If you're reading this in an email, the system is working! The images should load and the footnotes should be readable at the bottom.

[^1]: This is a test footnote to verify that footnotes appear in emails without broken anchor links.

[^2]: Another footnote to make sure multiple footnotes work correctly in the email format.

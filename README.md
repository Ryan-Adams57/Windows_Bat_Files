📁 Windows_Bat_Files

Quick reference for useful batch scripts on Windows.

🔄 1. Reset Windows Update

What it does:

Stops update services.

Renames SoftwareDistribution and catroot2 folders.

Re-registers update components.

Restarts services.

Use when: Windows Update is stuck or not working.

🔐 2. Reset User Password

What it does:

Prompts for username and new password.

Uses net user to reset it.

Shows success or error message.

Example:
Enter JohnDoe → enter new password → password resets.

Run as: Administrator.

🌐 3. Reset Internet Explorer

What it does:

Uses RunDll32.exe to reset IE settings.

Keeps the window open with PAUSE.

Resets:
Home page, search, SSL, and security settings.

Use when: IE is misbehaving.

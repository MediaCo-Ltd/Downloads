# MediaCo Downloads Portal

ASP Classic application download portal for VB6 applications.

## Setup

### Step 1: Zip all the executables

Run the PowerShell script to create zip files for all executables:

```powershell
.\zip-applications.ps1
```

This will create a .zip file for each .exe in C:\Applications (e.g., AddOrderRef.exe becomes AddOrderRef.zip).

### Step 2: Create symbolic link

Create a symbolic link/junction on the server to access the applications folder:

```powershell
New-Item -ItemType Junction -Path "C:\Web Sites\Downloads\apps" -Target "C:\Applications"
```

This creates a directory junction from `C:\Web Sites\Downloads\apps` that points to `C:\Applications`, allowing the ASP pages to serve files from that location.

## Files

- **default.asp** - Main download page listing all applications
- **download.asp** - Secure download handler with whitelist protection

## Security

The download handler uses a whitelist approach where each application is assigned an ID number. Only explicitly whitelisted applications can be downloaded, preventing path traversal attacks.

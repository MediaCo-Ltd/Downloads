# MediaCo Downloads Portal

ASP Classic application download portal for VB6 applications.

## Setup

This application requires a symbolic link/junction on the server to access the applications folder:

```cmd
mklink /D "C:\Web Sites\Downloads\apps" C:\Applications
```

This creates a directory junction from `C:\Web Sites\Downloads\apps` that points to `C:\Applications`, allowing the ASP pages to serve files from that location.

## Files

- **default.asp** - Main download page listing all applications
- **download.asp** - Secure download handler with whitelist protection

## Security

The download handler uses a whitelist approach where each application is assigned an ID number. Only explicitly whitelisted applications can be downloaded, preventing path traversal attacks.

<%@ Language=VBScript %>
<%
' Secure download handler with whitelist
Response.Buffer = True

Dim appId, fileName, filePath
appId = Request.QueryString("app")

' Validate appId is numeric
If Not IsNumeric(appId) Then
    Response.Status = "400 Bad Request"
    Response.Write "Invalid request"
    Response.End
End If

appId = CInt(appId)

' Whitelist mapping - ONLY these files can be downloaded
Select Case appId
    Case 1
        fileName = "AddOrderRef.exe"
    Case 2
        fileName = "Courier-Labels.exe"
    Case 3
        fileName = "DPDCheck.exe"
    Case 4
        fileName = "Date-Folders.exe"
    Case 5
        fileName = "HH-Export.exe"
    Case 6
        fileName = "HS-Report-Email.exe"
    Case 7
        fileName = "IndoorRedo.exe"
    Case 8
        fileName = "Invoices.exe"
    Case 9
        fileName = "MarkExportWeb.exe"
    Case 10
        fileName = "MDL-Artwork-Email.exe"
    Case 11
        fileName = "MDLTracker.exe"
    Case 12
        fileName = "MDL-Tracker-Email.exe"
    Case 13
        fileName = "Mgs-Production-Email.exe"
    Case 14
        fileName = "MPL-Export-Email.exe"
    Case 15
        fileName = "MPLTracker.exe"
    Case 16
        fileName = "MPL-Tracker-Email.exe"
    Case 17
        fileName = "Orders-Today-Orders.exe"
    Case 18
        fileName = "Outdoor-Printed.exe"
    Case 19
        fileName = "OutdoorSpecSheets.exe"
    Case 20
        fileName = "Pricing.exe"
    Case 21
        fileName = "Redo-Email.exe"
    Case 22
        fileName = "Sales-Email.exe"
    Case 23
        fileName = "ScheduledTasks.exe"
    Case 24
        fileName = "Stock.exe"
    Case 25
        fileName = "Stock-Report.exe"
    Case 26
        fileName = "Stock-Sql.exe"
    Case 27
        fileName = "Tag-Printer.exe"
    Case 28
        fileName = "YTD.exe"
    Case Else
        Response.Status = "404 Not Found"
        Response.Write "Application not found"
        Response.End
End Select

' Build full file path using Server.MapPath for relative path
filePath = Server.MapPath("apps/" & fileName)

' Check if file exists
Dim fso
Set fso = Server.CreateObject("Scripting.FileSystemObject")

If Not fso.FileExists(filePath) Then
    Response.Status = "404 Not Found"
    Response.Write "File not found: " & fileName
    Set fso = Nothing
    Response.End
End If

' Get file for streaming
Dim fileStream
Set fileStream = fso.GetFile(filePath)

' Set response headers for download
Response.Clear
Response.ContentType = "application/octet-stream"
Response.AddHeader "Content-Disposition", "attachment; filename=""" & fileName & """"
Response.AddHeader "Content-Length", CStr(fileStream.Size)

' Stream the file
Dim stream
Set stream = Server.CreateObject("ADODB.Stream")
stream.Type = 1 ' Binary
stream.Open
stream.LoadFromFile filePath
Response.BinaryWrite stream.Read
stream.Close

' Cleanup
Set stream = Nothing
Set fileStream = Nothing
Set fso = Nothing
Response.End
%>

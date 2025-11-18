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
        fileName = "AddOrderRef.zip"
    Case 2
        fileName = "Courier-Labels.zip"
    Case 3
        fileName = "DPDCheck.zip"
    Case 4
        fileName = "Date-Folders.zip"
    Case 5
        fileName = "HH-Export.zip"
    Case 6
        fileName = "HS-Report-Email.zip"
    Case 7
        fileName = "IndoorRedo.zip"
    Case 8
        fileName = "Invoices.zip"
    Case 9
        fileName = "MarkExportWeb.zip"
    Case 10
        fileName = "MDL-Artwork-Email.zip"
    Case 11
        fileName = "MDLTracker.zip"
    Case 12
        fileName = "MDL-Tracker-Email.zip"
    Case 13
        fileName = "Mgs-Production-Email.zip"
    Case 14
        fileName = "MPL-Export-Email.zip"
    Case 15
        fileName = "MPLTracker.zip"
    Case 16
        fileName = "MPL-Tracker-Email.zip"
    Case 17
        fileName = "Orders-Today-Orders.zip"
    Case 18
        fileName = "Outdoor-Printed.zip"
    Case 19
        fileName = "OutdoorSpecSheets.zip"
    Case 20
        fileName = "Pricing.zip"
    Case 21
        fileName = "Redo-Email.zip"
    Case 22
        fileName = "Sales-Email.zip"
    Case 23
        fileName = "ScheduledTasks.zip"
    Case 24
        fileName = "Stock.zip"
    Case 25
        fileName = "Stock-Report.zip"
    Case 26
        fileName = "Stock-Sql.zip"
    Case 27
        fileName = "Tag-Printer.zip"
    Case 28
        fileName = "YTD.zip"
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
Response.ContentType = "application/zip"
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

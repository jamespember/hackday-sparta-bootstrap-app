Public Function GetSparta(WebPath As String, Method As String) As String
    On Error GoTo ErrorHandler
    Dim oXHTTP As Object
    Dim s As String
    Dim sPayload As String
    
    Set oXHTTP = CreateObject("MSXML2.XMLHTTP")
    oXHTTP.Open Method, WebPath, False
    oXHTTP.setRequestHeader "HTTP-X-ACCESS-TOKEN", "REPLACE WITH YOUR ACCESS TOKEN HERE "
    
    oXHTTP.Send

    GetSparta = oXHTTP.responseText
Exit Function
ErrorHandler:
    GetSparta = ""
End Function

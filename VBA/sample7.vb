REM https://www.fe-siken.com/kakomon/sample/b7.html

Function factional(n)
    If n = 0 Then
        factional = 1
    Else
        factional = n * factional(n - 1)
    End If
End Function

Sub sample07()
    Debug.Print factional(6)
End Sub

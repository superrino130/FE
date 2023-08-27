Dim i As Integer

Sub proc1()
    Debug.Print i
    i = i + 1
    proc1
End Sub

Sub proc2()
    i = 1
    proc1
End Sub
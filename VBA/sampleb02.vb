REM https://www.fe-siken.com/kakomon/05_haru/b2.html

Sub proc1()
    Debug.Print "A"
    proc3
End Sub

Sub proc2()
    proc3
    Debug.Print "B"
    proc1
End Sub

Sub proc3()
    Debug.Print "C"
End Sub
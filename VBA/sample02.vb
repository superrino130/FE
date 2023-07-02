REM https://www.fe-siken.com/kakomon/sample/b2.html

Public Function fizzBuzz(num)
    If num Mod 15 = 0 Then
        fizzBuzz = "3と5で割り切れる"
    ElseIf num Mod 3 = 0 Then
        fizzBuzz = "3で割り切れる"
    ElseIf num Mod 5 = 0 Then
        fizzBuzz = "5で割り切れる"
    Else
        fizzBuzz = "3でも5でも割り切れない"
    End If
End Function

Public Sub myPrint()
    For i = 1 To 15
        Debug.Print ("i = " & i & " " & fizzBuzz(i))
    Next
End Sub

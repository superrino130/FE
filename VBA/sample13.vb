REM https://www.fe-siken.com/kakomon/sample/b13.html

Function search(data, target)
  low = 0
  high = UBound(data) + 1
  search = -1
  Do While low <= high
    middle = (low + high) \ 2
    If data(middle) < target Then
      low = middle
    ElseIf data(middle) > target Then
      high = middle
    Else
      search = middle
      Exit Function
    End If
  Loop
End Function

Public Sub sample13()
    data = Array(1, 3, 4, 5, 7, 10)
    target = 5
    
    Debug.Print search(data, target)
End Sub

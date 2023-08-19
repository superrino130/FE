# https://www.fe-siken.com/kakomon/sample/b4.html

Function gcd(num1, num2) As Integer
  x = num1
  y = num2
  Do While x <> y
    If x > y Then
      x = x - y
    Else
      y = y - x
    End If
  Loop
  gcd = x
End Function

Debug.Print gcd(12, 15)

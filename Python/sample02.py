# https://www.fe-siken.com/kakomon/sample/b2.html

def fizzBuzz(num):
    if num % 15 == 0:
        result = "3と5で割り切れる"
    elif num % 3 == 0:
        result = "3で割り切れる"
    elif num % 5 == 0:
        result = "5で割り切れる"
    else:
        result = "3でも5でも割り切れない"
    return result

for i in range(1, 16):
    print("i =",i,fizzBuzz(i))

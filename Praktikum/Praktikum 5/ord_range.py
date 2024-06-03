def Kanan(x, y):
    return abs(y-x)

def Kiri(x, y):
    return abs(x-y)

n = ord(input())
m = ord(input())

if (65 <= n <= 90) and (65 <= m <= 90):
    if n > m:
        p = m
        m = n
        n = p
        
    a = n - 26
    b = m - 26
    if Kanan(a, b) > Kiri(n, b):
        print(Kiri(n, b))
    else:
        print(Kanan(a, b))
else:
    print("Tidak valid")

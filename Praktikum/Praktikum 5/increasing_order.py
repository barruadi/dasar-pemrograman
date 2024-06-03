def Rotasi(a):
    x = [0 for i in range(len(a))]
    for i in range(len(a)):
        x[i] = a[i-1]
    return x

def CekUrutan(li, terurut):
    for i in range(len(a)):
        if li[i] != terurut[i]:
            return False
    return True

n = int(input())
a = (list(map(int, input().strip().split())))

b = [ i for i in a]
for i in range(len(b)):
    for j in range(i):
        if b[i] < b[j]:
            b[i], b[j] = b[j], b[i]

for i in range(n):
    if CekUrutan(a, b):
        count = i
        break
    else:
        a = Rotasi(a)
        count = 999

if count >= n:
    print("Tidak")
else:
    print(count)
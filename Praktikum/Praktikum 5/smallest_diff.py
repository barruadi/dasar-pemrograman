def Selisih(i, j):
    return abs(i-j)

n = int(input())
a = (list(map(int, input().strip().split())))
diff = 1234567
for i in range(n):
    for j in range(i):
        if Selisih(a[i], a[j]) < diff:
            diff = Selisih(a[i], a[j])

print(diff)


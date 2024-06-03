def Modus(a, n):
    max = 0
    for j in range(len(a)):
        if a[j] == n:
            max += 1
    return max

n = int(input())
a = (list(map(int, input().strip().split())))
for i in range(len(a)):
    for j in range(i):
        if a[i] < a[j]:
            a[i], a[j] = a[j], a[i]

angka = -1
for i in a:
    if angka < Modus(a, i):
        angka = Modus(a, i)
        modusnya = i

print(modusnya)
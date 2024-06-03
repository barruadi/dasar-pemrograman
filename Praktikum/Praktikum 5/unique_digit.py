arr = []
while True:
    n = int(input())
    if n == -9999:
        break
    else:
        arr.append(n)

perulangan = True
counter = 1
temp = counter

# sort
for i in range(len(arr)):
    for j in range(i):
        if arr[i] < arr[j]:
            arr[i], arr[j] = arr[j], arr[i]

while perulangan:
    if counter in arr:
        counter += 1
    else:
        for i in range(len(arr)):
            for j in range(i):
                if arr[i] + arr[j] == counter:
                    counter += 1

    if counter == temp:
        perulangan = False
    else:
        temp = counter

print(counter)

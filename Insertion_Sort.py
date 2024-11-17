def insertionSort(arr):
    for i in range(1, len(arr)):
        key = arr[i]
        j = i - 1
        while j >= 0 and key < arr[j]:
            arr[j + 1] = arr[j]
            j -= 1
        arr[j + 1] = key

def printArray(arr):
    for i in range(len(arr)):
        print(arr[i], end=" ")
    print()

if __name__ == "__main__":
    arr = [10,9,3,6,7,1,8,3]
    print("Before_Sorting : ")
    printArray(arr)
    insertionSort(arr)
    print("After_Sorting : ")
    printArray(arr)
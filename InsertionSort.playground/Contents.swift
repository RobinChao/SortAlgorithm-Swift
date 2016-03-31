//: Playground - noun: a place where people can play


//: 插入排序

func insertionSort(var arr: [Int]) -> [Int] {
    for i in 1 ..< arr.count {
        let key = arr[i]
        var j = i - 1
        while j >= 0 && arr[j] > key {
            arr[j + 1] = arr[j]
            j -= 1
        }
        arr[j + 1] = key
    }
    return arr
}


insertionSort([1,3,5,6,3,2,1,6,54,34,23,4,63,23,234,3,64,6,745,73,25,432,543,])
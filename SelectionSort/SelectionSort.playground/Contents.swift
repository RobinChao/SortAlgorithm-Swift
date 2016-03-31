//: Playground - noun: a place where people can play

//: 选择排序

func selectionSort(inout arr: [Int]) -> [Int] {
    for i in 0 ..< arr.count - 1 {
        var min = i
        for j  in i+1 ..< arr.count {
            if arr[min] > arr[j] {
                min = j
            }
        }
        let temp = arr[min]
        arr[min] = arr[i]
        arr[i] = temp
    }
    
    return arr
}


var numbers = [1,2,42,1,43,5,4,7,8,8,2,4,5,66,44,22]
let result = selectionSort(&numbers)
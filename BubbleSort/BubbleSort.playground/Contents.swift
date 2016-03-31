//: Playground - noun: a place where people can play


//: 冒泡排序

func bubbleSort(inout arr: [Int]) -> [Int] {
    for i in 0 ..< arr.count {
        for j in 0 ..< arr.count - 1 - i {
            if arr[j] > arr[j + 1] {
                let temp = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = temp
            }
        }
    }
    
    return arr
}



var numbers = [12,321,321,5425,325,4313,2143214,3124,3214321,43214321,4]
let result = bubbleSort(&numbers)
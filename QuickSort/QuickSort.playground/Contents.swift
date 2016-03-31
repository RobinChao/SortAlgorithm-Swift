//: Playground - noun: a place where people can play


//: 快速排序

//: 范例1


func quickSort(inout arr: [Int]) -> [Int] {
    func partition(p: Int, _ r: Int) -> Int {
        var i = p - 1
        let key = arr[r]
        for j in p ..< r {
            if arr[j] < key {
                i = i + 1
                let temp = arr[j]
                arr[j] = arr[i]
                arr[i] = temp
            }
        }
        arr[r] = arr[i + 1]
        arr[i + 1] = key
        return i + 1
    }
    
    func internalQuickSort(p: Int, _ r: Int) {
        if p < r {
            let q = partition(p, r)
            internalQuickSort(p, q - 1)
            internalQuickSort(q + 1, r)
        }
    }
    internalQuickSort(0, arr.count - 1)
    return arr
}


var numbers = [1,2,4,5,7,8,9,11,22,33,44,55,6,2,432,2,1,2]
let result = quickSort(&numbers)





//: 范例2

func quickSortFilter(inout arr: [Int]) -> [Int] {
    if arr.count > 0 {
        let q = arr.removeFirst()
        var leftA = arr.filter{$0 <= q}
        var rightA = arr.filter{$0 > q}
        
        return quickSort(&leftA) + [q] + quickSort(&rightA)
    }
    
    return arr
}


let result2 = quickSortFilter(&numbers)
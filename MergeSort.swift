

class MergeSort {

func mergeSort<T: Comparable>(_ nums: [T]) -> [T] {
    
    guard nums.count > 1 else { return nums }
    
    let mid = nums.count / 2
    
    let left = mergeSort(Array(nums[0..<mid]))
    let right = mergeSort(Array(nums[mid..<nums.count]))
    
    return sorting(left: left, right: right)
}

func sorting<T: Comparable>(left: [T], right: [T]) -> [T] {
    
    var result: [T] = []
    var i: Int = 0
    var j: Int = 0
    
    
    while i < left.count && j < right.count {
        if left[i] < right[j] {
            result.append(left[i])
            i += 1
        } else {
            result.append(right[j])
            j += 1
        }
    }
    
    while i < left.count {
        result.append(left[i])
        i += 1
    }
    
    while j < right.count {
        result.append(right[j])
        j += 1
    }
    return result
}
}
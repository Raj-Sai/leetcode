
class Reverse {
    func reverse<T: Comparable>(_ nums: [T]) -> [T] {
        var result: [T] = []
        let n = nums.count / 2
        for i in 0..<n {
            let temp = result[i]
            result[i] = result[n - 1 - i]
            result[n - 1 - i] = temp
        }
        return result
    }
}
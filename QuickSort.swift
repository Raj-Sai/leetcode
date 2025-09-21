
class QuickSort {

    func sort<T: Comparable>(_ input: [T]) -> [T] {
        guard input.count > 1 else { return input }

        let pivot = input[input.count / 2]
        var left = [T]()
        var right = [T]()

        for (index, element) in input.enumerated() {
            if element == pivot { continue }
            if element <= pivot {
                left.append(element)
            } else {
                right.append(element)
            }
        }

        return sort(left) + [pivot] + sort(right)
    }

}
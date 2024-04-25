func maxElementWithEvenIndex(in array: [Int]) -> Int? {
    guard !array.isEmpty else {
        return nil
    }
    
    var max = array[0]
    
    for i in stride(from: 2, to: array.count, by: 2) {
        let element = array[i]
        if element > max {
            max = element
        }
    }
    
    return max
}

let array: [Int] = [5, 3, 8, 2, 10, 0, -1]
if let maxElement = maxElementWithEvenIndex(in: array) {
    print(maxElement)
} else {
    print("Array is empty")
}

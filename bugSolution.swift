func accessArraySafely(someArray: [Int], index: Int) -> Int? { 
    guard index >= 0 && index < someArray.count else { return nil }
    return someArray[index]
}

let myArray = [1, 2, 3, 4, 5]

if let safeValue = accessArraySafely(someArray: myArray, index: 2) {
    print("Safe Value: ", safeValue) // Output: Safe Value: 3
}

if let safeValue = accessArraySafely(someArray: myArray, index: 10) {
    print("Safe Value: ", safeValue)
} else {
    print("Index out of range") // Output: Index out of range
}
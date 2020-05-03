import UIKit

func binarySearch(in array: [Int], leftIndex: Int, rightIndex: Int, value: Int) -> Int? {
    if leftIndex > rightIndex { return nil }

    let middleIndex = leftIndex + (rightIndex - leftIndex) / 2

    if array[middleIndex] == value {
        return middleIndex
    } else if array[middleIndex] > value {
        return binarySearch(in: array, leftIndex: leftIndex, rightIndex: middleIndex - 1, value: value)
    } else {
        return binarySearch(in: array, leftIndex: middleIndex + 1, rightIndex: rightIndex, value: value)
    }
}

let array: [Int] = [0, 2, 11, 23, 40, 56, 61, 70]
let value: Int = 11
let searchIndex = binarySearch(in: array, leftIndex: 0, rightIndex: array.count - 1, value: value)

if let index = searchIndex {
    print("Search index for value - \(value) is - \(index). Starting index from zero (0)")
} else {
    print("Search index for value - \(value) is - nil")
}

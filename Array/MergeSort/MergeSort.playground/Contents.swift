import UIKit

func mergeSort(in array: inout [Int], leftIndex: Int, rightIndex: Int) {
  var counter = 0
  for i in stride(from: 1, to: rightIndex, by: 1) {
    for j in stride(from: i, to: 0, by: -1) {
      if array[j - 1] > array[j] {
        counter += 1
        array.swapAt(j, j - 1)
      }
    }
  }
}

var array: [Int] = [9, 0, 4, 3, 10, 5, 7, 2, 1, 6]
print("Array: \(array)")
mergeSort(in: &array, leftIndex: 0, rightIndex: array.count)
print("Sorted array: \(array)")

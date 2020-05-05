import UIKit

func partition(in array: inout [Int], leftIndex: Int, rightIndex: Int) -> Int {
  let pivot = array[rightIndex]
  var i = leftIndex - 1

  for j in leftIndex..<rightIndex {
    if array[j] < pivot {
      i += 1
      array.swapAt(i, j)
    }
  }
  array.swapAt((i + 1), rightIndex)
  return (i + 1)
}

func quickSort(in array: inout [Int], leftIndex: Int, rightIndex: Int) {
  if leftIndex < rightIndex {
    let pivot = partition(in: &array, leftIndex: leftIndex, rightIndex: rightIndex)
    quickSort(in: &array, leftIndex: leftIndex, rightIndex: pivot - 1)
    quickSort(in: &array, leftIndex: pivot + 1, rightIndex: rightIndex)
  }
}

var array: [Int] = [10, 80, 30, 90, 40, 50, 70]
print("Array: \(array)")
quickSort(in: &array, leftIndex: 0, rightIndex: array.count - 1)
print("Sorted array: \(array)")

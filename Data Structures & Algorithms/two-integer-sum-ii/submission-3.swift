class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        // start element
        var left = 0
        // end element
        var right = numbers.count - 1
     
        // iterate the pointers by the start is less than end
        while left < right {
            // currentSum - we add start and end value of the element
            let currentSum =  numbers[left] + numbers[right] 
            // print("calculation: \(currentSum)")
        
            // here we verify - it possible because the array already sorted:
            // 1: currentSum is bigger than target, we move end to inwards by minus - 1
            // 2: currentSum is smaller than target, we move start to inwards by plus + 1
            // 3: return the index of element in 1-indexed by + 1 for start and end
            if currentSum > target {
                right = right - 1
            } else if currentSum < target {
                left = left + 1
            } else if currentSum == target {
              return [left + 1, right + 1]
            }
        }

        // by default return empty, as when iteration not meet any satisfy condition
        return []
    }
}

// data structure: array, integer
// looking for: return indices of given target number in 1-indexed(means the index start from 1 instead of 0)
// contraints: index1 and index2 is not equal and could not use same element twice

// two pointers - left(start element) and right(end element)
// iterate the numbers until satify condition
// one satisfy = return the index by 1-indexed

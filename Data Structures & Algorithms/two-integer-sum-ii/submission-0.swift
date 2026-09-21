class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        if numbers.isEmpty { return [] }
    
        var left: Int = 0
        var right: Int = numbers.count - 1

        while left < right {
            let sum = numbers[left] + numbers[right]

            if sum == target {
                // ensure the output 1-indexed array instad of start from 0
                return [left + 1, right + 1]
            } else if sum < target {
                left = left + 1
            } else if sum > target{
                right = right - 1
            }
        }
        return []
    }
}

// data structure: integer
// looking for: targeted number in sorted array
// contraints: the index 1 and 2 could not be equal


// 1. verify if the numbers collections has elements
// 2. create property for the pointers
// 3. loop through the collections through pointer
// 4. if the is sum is less then expected add, increase the index of the left or the sum is greater than expected add, increase the index of the right
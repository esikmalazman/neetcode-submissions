class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        guard !s.isEmpty else {return 0}
        // convert string into array so we can index it
        let characters = Array(s)

        var left = 0
        var maxCount = 0
        // store seen elements
        var set = Set<Character>()

        // iterate each character in string
        for right in 0..<s.count { 

            let currentCharacter = characters[right]
            // verify if the currentCharacter already exist in set
            while set.contains(currentCharacter) {
                // identify index of current left character then we remove it
                // access characters array because set is not ordered collection
                let leftCharacter = characters[left]
                // remove the character to shrink the window
                set.remove(leftCharacter)

               // move the left pointer upfront
                left = left + 1
            }

            // add into set if current character not exist yet
            set.insert(currentCharacter)
            maxCount = max(maxCount, right - left + 1)
        }

        return maxCount
    }
}


// data stucture: string, integer
// looking for: count of longest substring with no duplicate characters

// left - start point, right - second point
// a property of type that can store thing we already analyse
// we can set to identify unique items, if already exist we move the left to right position and repeat till ends of the collection


   // print("set: \(set)")
    

            // while set.contains(currentCharacter) {
            //     let leftCharacter = characters[left]
            //     set.remove(leftCharacter)
            //     print("this \(currentCharacter) exist, set after remove: \(set)")
            //     left = left + 1
            // }

            // set.insert(currentCharacter)
            // print("set after insert: \(set)")

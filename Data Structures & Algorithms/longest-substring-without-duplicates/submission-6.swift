class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        guard !s.isEmpty else {return 0}

        let characters = Array(s)

        var left = 0
        var maxCount = 0
     //   var dictionary: [Character:Int] = [:]
        var set = Set<Character>()


        // iterate each characted in string
        for right in 0..<s.count { 

            let currentCharacter = characters[right]


            while set.contains(currentCharacter) {
                let leftCharacter = characters[left]
                set.remove(leftCharacter)
               // print("this \(currentCharacter) exist, set after remove: \(set)")
                left = left + 1
            }

            set.insert(currentCharacter)
            //print("set after insert: \(set)")

            // while let _ = dictionary[currentCharacter] {
            //     let leftCharacter = characters[left]
            //     dictionary[leftCharacter] = nil

            //     left = left + 1
            // }

            // // if let lastSeenIndex = dictionary[currentCharacter] {
            // //     print("lastSeenIndex: \(lastSeenIndex)")
            // //     left = left + 1
            // // }
            
           // dictionary[currentCharacter] = right
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

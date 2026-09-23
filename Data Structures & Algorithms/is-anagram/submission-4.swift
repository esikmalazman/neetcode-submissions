class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        // verify the first and second string has same length, otherwise for sure it is not anagram
        guard s.count == t.count else {return false}

        // store the collection of string
        var collection:[Character:Int] = [:]

        // iterate the first string
        for item in s {
            // assign to store with 1 point for each character 
            collection[item, default:0] += 1 
            //print("collection in S:\(collection)")
        }

        // iterate the second string and 
        for item in t {
            // deduct the points from the storage and assign negative points if the character is new
            collection[item, default:0] -= 1 
            //print("collection in T:\(collection)")

            // verify if the each character has less than 0 point, it means it not contains same character
            if collection[item]! < 0 {
                return false
            }
        }

        // by default, returning true as we already check the character in points
        return true
    }
}

// data structure: string, boolean
// looking for: two given string contains same characters, and each charactes appear same number of times



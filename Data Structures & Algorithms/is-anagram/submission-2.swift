class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
    // verify lenght of 2 string are the same
    guard s.count == t.count else {
        return false
    }

    var collection: [Character:Int] = [:]

    // iterate s input and increase the value once we insert
    for character in s {
        collection[character, default:0] += 1
        // print("s: \(collection)")
    }

    // iterate t input and decrease the value if it match with s
    for character in t {
        collection[character, default:0] -= 1
        // verify if the character still has value means it the string not anagram
        if collection[character]! < 0 {
            return false
        }
        // print("t: \(collection)")
    }
        
      return true
    }
}


// data structure involved: string - collection of characters
// looking for: anagrams - 2 string contains same character
// contraints: s and t - lowercase, lenght the same
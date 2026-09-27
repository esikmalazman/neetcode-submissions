class Solution {
    
    func isValid(_ s: String) -> Bool {
        // verify the number of characters are even, else this for sure not valid as bracket is in pair
        guard s.count % 2 == 0 else {return false}
        
        // store iterated character and reference
        var stack:[Character] = []

        // iterate character in string
        for character in s {
            // print(character)
            // pattern matching within the bracket pairs
            switch character {
                // verify the current character is opening type, we store stack
                case "[", "(", "{":
                   stack.append(character)

                // verify the currect character is close type, then we check top of stack if the match open exist 
                // else for sure it not valid
                case "]":
                    guard stack.popLast() == "[" else {return false}

                case ")":
                    guard stack.popLast() == "(" else {return false}

                 case "}":
                    guard stack.popLast() == "{" else {return false}

                 default:
                    return false
            }
        }

        // stack should empty as when we found matching and we remove from stack,
        // if any element still exist means it does not have enough pair and not valid
        return stack.isEmpty
    }
}

// data structure: string, character, bool
// looking for: each open bracket has correct close bracket, it needs to be in the same type. 
// constraints:  only this character we check'(', ')', '{', '}', '[', ']'


// true - s is valid string with correct bracket else return false - patter matching

// 1. iterate the string to get each character
// 2. validate if bracket is same type, open and close correct format
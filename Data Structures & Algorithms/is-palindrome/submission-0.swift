class Solution {
    func isPalindrome(_ s: String) -> Bool {

    var phrase: String = s.lowercased()

    phrase = phrase.convert(.whitespacesAndNewlines)
    phrase = phrase.convert(.punctuationCharacters)
    phrase = phrase.convert(.symbols)

    let reversedPhrase = String(phrase.reversed())

    return phrase == reversedPhrase

    }
}

extension String {
    // convienient method to modify the string
    func convert(_ separatedBy: CharacterSet, _ joinedBy: String = "") -> String {
        // components(separatedBy:) - split string into array
        // joined(separator:) - make it into string back
        self.components(separatedBy: separatedBy).joined(separator:joinedBy)
    }
}


// data structure involes: string
// looking for: the given word read the same forwards and backwards
// constraints: ascii characters

// 1. convert to lowercase
// 2. remove the whitespace
// 3. remove the punctuation characters
// 4. remove the symbol
// 5. create property and reverse the string
// 6. compare the strip ourt string and reverse to identify if it Palindrome
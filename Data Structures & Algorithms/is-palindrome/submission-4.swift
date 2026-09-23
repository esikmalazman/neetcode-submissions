class Solution {
    func isPalindrome(_ s: String) -> Bool {
        // allocate string to property and convert it lowercase
        var phrase = s.lowercased()

        // modify the phrase to remove whitespaces, punctuationCharacters, symbols with convience method
        phrase = phrase.convert(to: .whitespacesAndNewlines)
        phrase = phrase.convert(to: .punctuationCharacters)
        phrase = phrase.convert(to: .symbols)
        // print(phrase)

        // allocated reverse string to property
        var reversePhrase = String(phrase.reversed())
        // print(reversePhrase)

        // verify if the characted is same from front and back
        return phrase == reversePhrase

    }
}

extension String {
    // convenience method to split string into array of substrings then flat it by to string
    func convert(to separatedBy: CharacterSet ) -> String {
        return self.components(separatedBy:separatedBy).joined(separator:"")
    }
}


// data structure: character, string, bool
// looking for: the string read same from the front and back
// contraints: alphanumeric characters only (A-Z, a-z, 0-9) 

// 1. string is collection of character, make it lowercase
// 2. we merge the all sentences into one sentence by remove whitespace, symbol, punctution - remove it because its not alphanumeric
// 3. we create a property of reverse that string
// 4. compare original string with reverse to determine palindrome

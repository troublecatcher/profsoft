extension String {
    func isPalindrome() -> Bool {
        let s = self.lowercased().filter { $0.isLetter || $0.isNumber }
        return s == String(s.reversed())
    }
}

print("level".isPalindrome())

print("".isPalindrome())

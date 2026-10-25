class Solution:
    def reverseWords(self, s: str) -> str:
        words = s.split()
        print(words)
        reversed = words[::-1]
        return " ".join(reversed)
        
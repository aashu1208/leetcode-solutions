class Solution:
    def reverseWords(self, s: str) -> str:
        words = s.split()
        result = []

        for items in words:
            reverse = items[::-1]   
            result.append(reverse)

        return " ".join(result)
        

class Solution:
    def validPalindrome(self, s: str) -> bool:
        l = 0
        h = len(s) - 1

        while l < h:
            if s[l] != s[h]:
                r1 = s[:l] + s[l+1:]
                r2 = s[:h] + s[h+1:]

                return r1 == r1[::-1] or r2 == r2[::-1]

            l += 1
            h -= 1

        return True

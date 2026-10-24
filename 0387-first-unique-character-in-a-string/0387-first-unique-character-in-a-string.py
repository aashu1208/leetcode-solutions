class Solution:
    def firstUniqChar(self, s: str) -> int:
        seen = {}

        for item in s:
            if item not in seen:
                seen[item] = 1
            else:
                seen[item] += 1
        for i, item in enumerate(s):
            if seen[item] == 1:
                return i
        return -1
            
        
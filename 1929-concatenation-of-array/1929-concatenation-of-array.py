class Solution:
    def getConcatenation(self, nums: list[int]) -> list[int]:
        ans = []
        for i in nums:
            ans.append(i)
        return ans * 2
        
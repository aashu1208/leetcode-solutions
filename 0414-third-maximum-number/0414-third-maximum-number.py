class Solution:
    def thirdMax(self, nums: list[int]) -> int:
        unique = sorted(set(nums), reverse = True)
        if len(unique) >= 3:
            return unique[2]
        return unique[0]
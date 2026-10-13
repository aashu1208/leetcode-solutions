class Solution:
    def twoSum(self, nums: list[int], target: int) -> list[int]:
        seen = {}
        for item, n in enumerate(nums):
            complement = target - n
            if complement in seen:
                return [seen[complement], item]
            seen[n] = item
        return []

        
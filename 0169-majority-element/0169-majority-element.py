class Solution:
    def majorityElement(self, nums: list[int]) -> int:
        seen = {}
        for item in nums:
            if item not in seen:
                seen[item] = 1
            else:
                seen[item] += 1

        for num, count in seen.items():
            if count > len(nums)//2:
                return num
        
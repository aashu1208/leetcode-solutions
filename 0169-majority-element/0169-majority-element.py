class Solution:
    def majorityElement(self, nums: list[int]) -> int:
        seen = {}

        for items in nums:
            if items not in seen:
                seen[items] = 1
            else:
                seen[items] += 1

        for num, count in seen.items():
            if count > len(nums)//2:
                return num
        
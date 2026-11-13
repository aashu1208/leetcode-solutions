class Solution:
    def majorityElement(self, nums: list[int]) -> list[int]:

        seen = {}

        for items in nums:
            if items not in seen:
                seen[items] = 1
            else:
                seen[items] += 1

        result = []

        for num, count in seen.items():
            if count > len(nums)//3:
                result.append(num)
        return result



        
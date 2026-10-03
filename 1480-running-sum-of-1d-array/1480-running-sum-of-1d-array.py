class Solution:
    def runningSum(self, nums: list[int]) -> list[int]:
        t = 0
        r=[]
        for i in nums:
            t += i
            r.append(t)
        return r
        
        
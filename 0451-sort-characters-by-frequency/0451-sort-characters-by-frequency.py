class Solution:
    def frequencySort(self, s: str) -> str:

        freq = {}

        for item in s:
            if item not in freq:
                freq[item] = 1
            else:
                freq[item] += 1
        result = []

        for ch, count in sorted(freq.items(), key = lambda x:x[1], reverse = True):
            result.append(ch * count)

        return "".join(result)


        
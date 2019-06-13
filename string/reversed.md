##### 541.反转字符串II

&emsp;
[Leetcode链接](https://leetcode-cn.com/problems/reverse-string-ii/)

```py
class Solution(object):
    def reverseStr(self, s, k):
        if len(s)<k:
            return s[::-1]
        elif (len(s)>=k) and (2*k>len(s)):
            return s[:k][::-1]+s[k:]
        else:
            return s[0:k][::-1]+s[k:2*k]+self.reverseStr(s[2*k:],k)
```
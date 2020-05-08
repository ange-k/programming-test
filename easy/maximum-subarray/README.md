# 原題
[Maximum Subarray](https://leetcode.com/problems/maximum-subarray/)
## カテゴリ
DynamicProgramming/動的計画法

# 問
整数配列 nums が与えられたとき、最大の和を持つ連続する部分配列  
（少なくとも1つの数を含む）を見つけ、その和を返します。

## 例
```
Input: [-2,1,-3,4,-1,2,1,-5,4],
Output: 6
Explanation: [4,-1,2,1] has the largest sum = 6.
```
## フォローアップ
あなたがO(n)の解を見つけた場合は、より分割統治アプローチを使用して  
別のソリューションをコーディングしてみてください。

#result 
Kadane's algorithmを利用する。
```
Runtime: 32 ms, faster than 91.49% of Ruby online submissions for Maximum Subarray.
Memory Usage: 10.1 MB, less than 50.00% of Ruby online submissions for Maximum Subarray.
```
メモリには優しくなかったな・・・。
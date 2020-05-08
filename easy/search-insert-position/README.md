# 原題
[Search Insert Position](https://leetcode.com/problems/search-insert-position/)
## カテゴリ
バイナリサーチ

# 問
ソートされた配列とターゲットの値が与えられた場合、ターゲットが見つかった場合は  
そのインデックスを返します。見つからなかった場合は、  
それが順番に挿入された場合のインデックスを返します。

配列内に重複がないと仮定しても構いません。

## 例
### Ex1
```
Input: [1,3,5,6], 5
Output: 2
```
### Ex2
```
Input: [1,3,5,6], 2
Output: 1
```
### Ex3
```
Input: [1,3,5,6], 7
Output: 4
```
### Ex4
```
Input: [1,3,5,6], 0
Output: 0
```

# result
バイナリサーチを利用すると早い。
```
Runtime: 32 ms, faster than 82.64% of Ruby online submissions for Search Insert Position.
Memory Usage: 9.6 MB, less than 100.00% of Ruby online submissions for Search Insert Position.
```
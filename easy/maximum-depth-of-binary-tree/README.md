# 原題
[Maximum Depth of Binary Tree](https://leetcode.com/problems/maximum-depth-of-binary-tree/)
## カテゴリ
Tree

# 問
2分木が与えられたとき，その最大深度を求めよ．

最大深度は，ルートノードから最遠のリーフノードまでの最長パスに沿ったノードの数です．

注意：リーフとは，子を持たないノードのことである．

## 例
Given binary tree [3,9,20,null,null,15,7],
```
    3
   / \
  9  20
    /  \
   15   7
```
return its depth = 3.

# result
Treeを表現するために、TreeNodeクラスのネスト表現が利用されているので、  
再帰処理を使用すればよい。
```
Runtime: 32 ms, faster than 95.77% of Ruby online submissions for Maximum Depth of Binary Tree.
Memory Usage: 9.8 MB, less than 100.00% of Ruby online submissions for Maximum Depth of Binary Tree.
```
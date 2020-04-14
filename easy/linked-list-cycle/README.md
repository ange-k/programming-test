# 原題
[Linked List Cycle](https://leetcode.com/problems/linked-list-cycle/)
## カテゴリ
LinkedList

# 問
リンクされたリストが与えられたとき、そのリストにサイクルがあるかどうかを判断します。  
与えられたリンクリスト内のサイクルを表現するために、  
リンクリスト内の末尾が接続する位置（インデックス0）を表す整数posを使用します。  
posが-1の場合、リンク先リストにはサイクルはありません。

## 例
### 例1
```
Input: head = [3,2,0,-4], pos = 1
Output: true
Explanation: リンクされたリストには、tailが2番目のノードに接続するサイクルがあります。
```
### 例2
```
Input: head = [1,2], pos = 0
Output: true
Explanation: リンクされたリストには、末尾が最初のノードに接続するサイクルがあります。
```
### 例3
```
Input: head = [1], pos = -1
Output: false
Explanation: リンク先のリストにはサイクルがありません。
```

## hint1
本当にブルートフォースを使う方法は、可能性のある数字のペアをすべて検索することですが、それでは時間がかかりすぎます。

繰り返しになりますが、完全性を保つためにも、ブルートフォース解を試してみるのがベストです。これらのブルートフォースソリューションから最適化を考えることができます。

## hint2
従って、ある数字の一つ、例えばxの場合、  
次の数値 yを見つけるために配列全体をスキャンしなければなりません。  
これは「value-x」で、valueは入力パラメーターです。

この検索が速くなるように配列を変更することはできますか？

## hint3
2つ目の考えは、配列を変えずに、追加のスペースをどうにかして使うことができないかということです。例えば、検索を高速化するためにハッシュマップとか？

# result
```
Runtime: 36 ms, faster than 76.02% of Ruby online submissions for Two Sum.
Memory Usage: 10.1 MB, less than 27.27% of Ruby online submissions for Two Sum.
```
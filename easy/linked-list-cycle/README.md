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

# result
ループを見つけ出せればよいので、2つのポインタを利用する。  
- slowポインタ。1つ進むポインタ。
- fastポインタ。2つ進むポインタ。

これを、ループさせることで、fastがslowに追いつけばループがあるといえる。  
そうなる前にnullを参照した場合、ループはない。
```

```
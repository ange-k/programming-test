# 原題
[Kth Largest Element in a Stream](https://leetcode.com/problems/kth-largest-element-in-a-stream/)

## カテゴリ
heap

# 問
ストリーム内のk番目に大きい要素を見つけるクラスを設計してください。  
これは、ソートされた順番の中で k 番目に大きい要素であって、k 番目の異なる要素ではないことに注意してください。  

`KthLargest` クラスは、整数 k とストリームの初期要素を含む整数配列 `nums` を受け入れるコンストラクタを持ちます。  
`KthLargest.add`メソッドを呼び出すたびに、ストリーム内のk番目に大きい要素を表す要素を返します。

## memo
nums length ≧k-1、k≧1と仮定してもよい。

## 例
```
int k = 3;
int[] arr = [4,5,8,2];
KthLargest kthLargest = new KthLargest(3, arr);
kthLargest.add(3);   // returns 4
kthLargest.add(5);   // returns 5
kthLargest.add(10);  // returns 5
kthLargest.add(9);   // returns 8
kthLargest.add(4);   // returns 8
```

# result
サイズｋの最小ヒープを利用することで、k番目に大きな要素が常に  
最小とすることができる。
```
Runtime: 76 ms, faster than 85.00% of Ruby online submissions for Kth Largest Element in a Stream.
Memory Usage: 11.3 MB, less than 100.00% of Ruby online submissions for Kth Largest Element in a Stream.
```
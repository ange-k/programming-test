# 原題
[Best Time to Buy and Sell Stock](https://leetcode.com/problems/best-time-to-buy-and-sell-stock/)
## カテゴリ
?

# 問
i 番目の要素が i 日目の指定された株式の価格である配列を持っているとします．

せいぜい1回の取引(すなわち、1つの株式を購入し、1つの株式を売却する)しかできなかった場合は、  
最大の利益を見つけるためのアルゴリズムを設計してください。

1つの株を買う前に1つの株を売ることはできないことに注意してください。  

## 例
### 例1
```
Input: [7,1,5,3,6,4]
Output: 5
Explanation: 
2日目（価格＝1）で買い、5日目（価格＝6）で売り、利益＝6-1＝5。
販売価格は購入価格よりも大きくする必要があるため、7-1 = 6ではありません。
```
### 例2
```
Input: [7,6,4,3,1]
Output: 0
Explanation:
 この場合、取引は行われない、つまり最大利益＝0となります。
```

# result
minPriceを無限とかにすると速度が悪化する。  
要件理解のほうが重要で、これに気づくと常にO(n)の計算で処理が完了することがわかる。  
すなわち、
- 一番小さな購入価格
- 一番高い利益が出る箇所

に着目すれば良いので、全数検索したりしなくてもよい。

```
Runtime: 36 ms, faster than 77.36% of Ruby online submissions for Best Time to Buy and Sell Stock.
Memory Usage: 9.9 MB, less than 100.00% of Ruby online submissions for Best Time to Buy and Sell Stock.
```
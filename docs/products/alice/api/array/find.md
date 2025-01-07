---
title: Find
long_title : array.Find
summary: 現在の配列から指定された条件と一致する要素を検索し、初めに見つかった要素を返します。
date: 2024-07-15
mt_type: method
mt_title: Find(delegate)
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### Find(delegate)

現在の配列から指定された条件と一致する要素を検索し、初めに見つかった要素を返します。

```cs title="AliceScript"
class Alice.Array;
public variable Find(delegate match);
```

|引数| |
|-|-|
|`match`|検索する条件を定義するデリゲート|

|戻り値| |
|-|-|
|`variable`|指定された条件と一致する要素が見つかった場合はその最初の要素、見つからなかった場合は`null`。|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0、4|
    |AliceSister|3.0、4|
    |Losetta|0.10、0.11|

### 説明
この関数は、現在の配列に指定された条件と一致する要素を検索します。ひとつでも`match`に一致する要素が見つかったら、処理はそこで停止します。

この関数は配列に対して線形探索を行います。このため、この関数の計算量は$O(n)$です。ここで、$n$は配列の要素数です。

### 例
以下は、ある数値が入ったが配列から3未満の要素の一例を表示しています。

```cs title="AliceScript"
var a = [1,2,3,4];
print(a.Find(item => item < 3)); // 出力例 : 1
```

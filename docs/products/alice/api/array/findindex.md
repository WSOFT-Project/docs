---
title: FindIndex
long_title : array.FindIndex
summary: 現在の配列から指定された条件と一致する要素を検索し、初めに見つかった要素のインデックスを返します。
date: 2024-07-15
mt_type: method
mt_title: FindIndex(delegate)
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### FindIndex(delegate)

現在の配列から指定された条件と一致する要素を検索し、初めに見つかった要素のインデックスを返します。

```cs title="AliceScript"
class Alice.Array;
public number FindIndex(delegate match);
```

|引数| |
|-|-|
|`match`|検索する条件を定義するデリゲート|

|戻り値| |
|-|-|
|`number`|指定された条件と一致する要素が見つかった場合はその最初の要素のインデックス、見つからなかった場合は`-1`。|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 説明
この関数は、現在の配列に指定された条件と一致する要素を検索します。ひとつでも`match`に一致する要素が見つかったら、処理はそこで停止します。

この関数は配列に対して線形探索を行います。このため、この関数の計算量は$O(n)$です。ここで、$n$は配列の要素数です。

### 例
以下は、ある数値が入ったが配列から3未満の要素のインデックスを表示しています。

```cs title="AliceScript"
var a = [1,2,3,4];
print(a.FindIndex(item => item < 3)); // 出力例 : 0
```

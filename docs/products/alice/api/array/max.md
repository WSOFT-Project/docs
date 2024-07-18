---
title: Max
long_title : array.Max
summary: 現在の配列内の要素の最大値を取得します。
date: 2024-07-18
mt_type: method
mt_title: Max()
mt_summary: 現在の配列内の要素の最大値を取得します。
mt_title: Max(delegate)
mt_summary: 現在の配列内の各要素にある値を用いて、その最大値を取得します。
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### Max()

現在の配列内の要素の最大値を取得します。

```cs title="AliceScript"
class Alice.Array;
public number Max();
```

|戻り値| |
|-|-|
|`number`|配列内の各要素のうち、最も大きい値|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

#### Max(delegate)

現在の配列内の各要素にある値を用いて、その最大値を取得します。

```cs title="AliceScript"
class Alice.Array;
public number Max(delegate source);
```

|引数| |
|-|-|
|`source`|配列内の各要素を数値に変換する関数|

|戻り値| |
|-|-|
|`number`|配列内の各要素のうち、最も大きい値|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 説明
この関数は、現在の配列の各要素のうち、最大のものを取得します。`source`を指定しない場合、配列内の各要素は数値型である必要があります。

`source`は、数値型を返すデリゲートである必要があります。このデリゲートには、順番に配列内の各要素が渡されます。

この関数は配列に対して線形探索を行います。このため、この関数の計算量は$O(n)$です。ここで、$n$は配列の要素数です。

### 例
以下は、ある数値が入った配列の最大値を求めます。

```cs title="AliceScript"
var a = [1,2,3,4];
print(a.Max()); // 出力例 : 4
```

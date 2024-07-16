---
title: Sum
long_title : array.Sum
summary: 現在の配列内の要素の合計を取得します。
date: 2024-07-16
mt_type: method
mt_title: Sum()
mt_summary: 現在の配列内の各要素の合計を取得します。
mt_title: Sum(delegate)
mt_summary: 現在の配列内の各要素にある値を用いて、その合計を取得します。
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### Sum()

現在の配列内の各要素の合計を取得します。

```cs title="AliceScript"
class Alice.Array;
public number Sum();
```

|戻り値| |
|-|-|
|`number`|配列内の各要素の合計|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

#### Sum(delegate)

現在の配列内の各要素にある値を用いて、その合計を取得します。

```cs title="AliceScript"
class Alice.Array;
public number Sum(delegate source);
```

|引数| |
|-|-|
|`source`|配列内の各要素を数値に変換する関数|

|戻り値| |
|-|-|
|`number`|配列内の各要素の合計|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 説明
この関数は、現在の配列の各要素の合計を取得します。`source`を指定しない場合、配列内の各要素は数値型である必要があります。

### 例
以下は、ある数値が入った配列の合計を求めます。

```cs title="AliceScript"
var a = [1,2,3,4];
print(a.Sum()); // 出力例 : 10
```

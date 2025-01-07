---
title: First
long_title : array.First
summary: 現在の配列の最初の要素を表します
mt_type: property
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

現在の配列の最初の要素を表します

```cs title="AliceScript"
class Alice.Array;
public readonly variable First;
```

### 値
|値| |
|-|-|
|`variable`|配列の先頭にある要素|

???note "対応: Alice2.0以降"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.9、0.10、0.11|

### 説明
このプロパティは、配列の最初の要素を表します。

この値の参照にかかる計算量は$O(1)$です。

### 例
以下は、`1`、`2`、`3`がある配列から最初の数を取得します。

```cs title="AliceScript"
var a = [1,2,3];
print(a.First); // 出力例 : 1
```

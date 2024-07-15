---
title: Length
long_title : array.Length
summary: 現在の配列にある要素の数を表します
mt_type: property
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

現在の配列にある要素の数を表します

```cs title="AliceScript"
class Alice.Array;
public readonly number Length;
```

### 値
|値| |
|-|-|
|`number`|配列にある要素の数。ただし配列が空の場合は0。|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 説明
この値の参照にかかる時間は、$O(1)$です。

### 例
以下は、`abc`の文字数を表示します

```cs title="AliceScript"
var a = "abc";
print(a.length); // 出力例 : 3
```

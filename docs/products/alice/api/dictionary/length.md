---
title: Length
long_title : dictionary.Length
summary: 辞書内にあるキーと値のペアの数を表します
mt_type: property
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Dictionary.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Dictionary.cs)

辞書内にあるキーと値のペアの数を表します

```cs title="AliceScript"
class Alice.Dictionary;
public readonly number Length;
```

### 値
|値| |
|-|-|
|`number`|辞書にある要素の数。ただし、辞書が空の場合は0。|

???note "対応: Alice4以降"
    |対応||
    |---|---|
    |AliceScript|4|
    |AliceSister|4|
    |Losetta|0.11|

### 説明
このプロパティは、辞書内にあるキーと値のペアの数を返します。

この値の参照にかかる時間は、$O(1)$です。

### 例
次の例では、辞書の要素数を取得しています。

```cs title="AliceScript"
var dict = {
    "one": 1,
    "two"; 2,
    "three": 3
};

print(dict.Length); //出力: 3
```

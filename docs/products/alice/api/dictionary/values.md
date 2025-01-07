---
title: Values
long_title : dictionary.Values
summary: 辞書内にある項目の値のリストを返します
mt_type: property
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Dictionary.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Dictionary.cs)

辞書内にある項目の値のリストを返します

```cs title="AliceScript"
class Alice.Dictionary;
public readonly array Values;
```

### 値
|値| |
|-|-|
|`array`|辞書にある項目の値のリスト|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

### 説明
このプロパティは、辞書にあるすべての値を返します。返ってくる値の順序は定まっていませんが、[Keys](./keys.md)プロパティと同じ順です。

この値の参照にかかる時間は、$O(1)$です。

### 例
次の例では、辞書の値をすべて表示しています。

```cs title="AliceScript"
var dict = {
    "one": 1,
    "two"; 2,
    "three": 3
};

foreach(var value in dict.Valuess)
{
    print(value);
}
```

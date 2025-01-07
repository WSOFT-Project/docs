---
title: Keys
long_title : dictionary.Keys
summary: 辞書内にあるキーのリストを返します
mt_type: property
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Dictionary.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Dictionary.cs)

辞書内にあるキーのリストを返します

```cs title="AliceScript"
class Alice.Dictionary;
public readonly array Keys;
```

### 値
|値| |
|-|-|
|`array`|辞書にあるキーのリスト|

???note "対応: Alice4以降"
    |対応||
    |---|---|
    |AliceScript|4|
    |AliceSister|4|
    |Losetta|0.11|

### 説明
このプロパティは、辞書にあるすべてのキーを返します。返ってくるキーの順序は定まっていませんが、[Values](./values.md)プロパティと同じ順です。

この値の参照にかかる時間は、$O(1)$です。

### 例
次の例では、辞書のキーをすべて表示しています。

```cs title="AliceScript"
var dict = {
    "one": 1,
    "two"; 2,
    "three": 3
};

foreach(var key in dict.Keys)
{
    print(key);
}
```

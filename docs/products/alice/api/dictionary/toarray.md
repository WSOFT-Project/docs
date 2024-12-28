---
title: ToArray
long_title : dictionary.ToArray
summary: 現在の辞書にあるキーと値のペアを新しい配列にコピーします
mt_type: method
mt_title: ToArray()
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Dictionary.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Dictionary.cs)

#### ToArray()

現在の辞書にあるキーと値のペアを新しい配列にコピーします

```cs title="AliceScript"
class Alice.Dictionary;
public array ToArray();
```

|戻り値| |
|-|-|
|`:::cs array`|配列の末尾に追加する変数。この引数は複数個指定できます。|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

### 例
以下は、ある辞書を配列に変換します。

```cs title="AliceScript"
dictionary dict = {
    "one": 1,
    "two": 2
};

array ary = dict.ToArray();
```

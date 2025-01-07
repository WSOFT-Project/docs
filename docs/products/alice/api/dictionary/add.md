---
title: Add
long_title : dictionary.Add
summary: 辞書に新しいキーと値のペアを追加します。
mt_type: method
mt_title: Add(variable,variable)
mt_summary: キーと値を指定して、辞書に新しい項目を追加します
mt_title: Add(KeyValuePair)
mt_summary: キーと値のペアを指定して、辞書に新しい項目を追加します
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Dictionary.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Dictionary.cs)

#### Add(variable,variable)

キーと値を指定して、辞書に新しい項目を追加します

```cs title="AliceScript"
class Alice.Dictionary;
public void Add(variable key, variable value);
```

|引数| |
|-|-|
|`key`|辞書に新たに追加する項目のキー|
|`value`|辞書に新たに追加する項目の値|

???note "対応: Alice4以降"
    |対応||
    |---|---|
    |AliceScript|4|
    |AliceSister|4|
    |Losetta|0.11|

#### Add(KeyValuePair)

キーと値のペアを指定して、辞書に新しい項目を追加します

```cs title="AliceScript"
class Alice.Dictionary;
public void Add(KeyValuePair keyValuePair);
```

|引数| |
|-|-|
|`keyValuePair`|辞書に新たに追加する項目のキーと値を表す`KeyValuePair`型のオブジェクト|

???note "対応: Alice4以降"
    |対応||
    |---|---|
    |AliceScript|4|
    |AliceSister|4|
    |Losetta|0.11|

### 説明
このメソッドは、辞書に新たに項目を追加します。

追加しようとした項目のキーがすでに辞書に存在する場合、このメソッドは例外をスローします。

辞書の要素数がその辞書の容量より小さい場合、このメソッドの操作にかかる計算量は$O(1)$です。

辞書に項目を追加するとき、辞書の要素数がその辞書の容量と等しい場合、辞書に項目を追加する前に現在の容量の2倍の領域が確保され、現在の辞書はそこにコピーされます。このような場合では、このメソッドは$O(n)$操作となります。ここで$n$は、[Count](./count.md)プロパティの値です。

### 例
以下は、辞書に`three`という文字列のとき`3`という値を追加します。

```cs title="AliceScript"
dictionary dict = { 
    "one": 1,
    "two": 2
};

dict.Add("three", 3);
```

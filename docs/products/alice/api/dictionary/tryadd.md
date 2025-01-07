---
title: TryAdd
long_title : dictionary.TryAdd
summary: 辞書への新しいキーと値のペアの追加を試みます
mt_type: method
mt_title: TryAdd(variable,variable)
mt_summary: キーと値を指定して、辞書への新しい項目の追加を試みます
mt_title: TryAdd(KeyValuePair)
mt_summary: キーと値のペアを指定して、辞書への新しい項目の追加を試みます
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Dictionary.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Dictionary.cs)

#### TryAdd(variable,variable)

キーと値を指定して、辞書への新しい項目の追加を試みます

```cs title="AliceScript"
class Alice.Dictionary;
public bool TryAdd(variable key, variable value);
```

|引数| |
|-|-|
|`key`|辞書に新たに追加する項目のキー|
|`value`|辞書に新たに追加する項目の値|

|戻り値| |
|-|-|
|`:::cs bool`|辞書に項目を追加できた場合は`true`、追加できなかった場合は`false`|

???note "対応: Alice4以降"
    |対応||
    |---|---|
    |AliceScript|4|
    |AliceSister|4|
    |Losetta|0.11|

#### TryAdd(KeyValuePair)

キーと値のペアを指定して、辞書への新しい項目の追加を試みます

```cs title="AliceScript"
class Alice.Dictionary;
public bool TryAdd(KeyValuePair keyValuePair);
```

|引数| |
|-|-|
|`keyValuePair`|辞書に新たに追加する項目のキーと値を表す`KeyValuePair`型のオブジェクト|

|戻り値| |
|-|-|
|`:::cs bool`|辞書に項目を追加できた場合は`true`、追加できなかった場合は`false`|

???note "対応: Alice4以降"
    |対応||
    |---|---|
    |AliceScript|4|
    |AliceSister|4|
    |Losetta|0.11|

### 説明
このメソッドは、辞書への項目の追加を試みます。

このメソッドは[Add](./add.md)メソッドとは異なり、追加しようとした項目のキーがすでに辞書に存在する場合、このメソッドは`false`を返します。

辞書の要素数がその辞書の容量より小さい場合、このメソッドの操作にかかる計算量は$O(1)$に近づきます。

辞書に項目を追加するとき、辞書の要素数がその辞書の容量と等しい場合、辞書に項目を追加する前に現在の容量の2倍の領域が確保され、現在の辞書はそこにコピーされます。このような場合では、このメソッドは$O(n)$操作となります。ここで$n$は、[Count](./count.md)プロパティの値です。

### 例
以下は、辞書に`three`という文字列のとき`3`という値を追加します。

```cs title="AliceScript"
dictionary dict = { 
    "one": 1,
    "two": 2
};

if(dict.TryAdd("three", 3))
{
    print("three can append dictionary.");
}
```

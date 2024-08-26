---
title: Foreach
long_title : array.Foreach
summary: 現在の配列の各要素について、指定されたデリゲートを実行します
mt_type: method
mt_title: Foreach(delegate)
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### Foreach(delegate)

現在の配列の各要素について、指定されたデリゲートを実行します。デリゲートの第一引数にはその要素が渡されます。

```cs title="AliceScript"
class Alice.Array;
public void Foreach(delegate predicate);
```

|引数| |
|-|-|
|`predicate`|繰り返しを実行するデリゲート。第一引数にはその要素が渡されます。|

???note "対応: Alice2.0以降"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0|
    |AliceSister|2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.9、0.10|

### 例
以下は、`1`、`2`、`3`がある配列の中身を順番に出力する例です。

```cs title="AliceScript"
var a = [1,2,3];
a.Foreach(item => print(item));

// 出力例
// 1
// 2
// 3
```
---
title: SequenceEqual
long_title : array.SequenceEqual
summary: 現在の配列ともう一方の配列の要素が等しいかどうかを判定します
mt_type: method
mt_title: SequenceEqual(array)
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### SequenceEqual(array)

現在の配列ともう一方の配列の要素が等しいかどうかを判定します

```cs title="AliceScript"
class Alice.Array;
public bool SequenceEqual(array other);
```

|引数| |
|-|-|
|`other`|現在の配列と比較する配列|

|戻り値| |
|-|-|
|`bool`| 現在の配列と比較する配列内のすべての要素が等しければ`true`、それ以外の場合は`false`|

???note "対応: Alice2.2以降"
    |対応||
    |---|---|
    |AliceScript|2.2、2.3、3.0|
    |AliceSister|2.2、2.3、3.0|
    |Losetta|0.9、0.10|

### 例
以下は、`1`、`2`、`3`がある配列ふたつを定義し、それらが等しいことを確かめます。

```cs title="AliceScript"
var a = [1,2,3];
var b = [1,2,3];
print(a.SequenceEqual(b)); // 出力例 : true
```

---
title: InsertRange
long_title : array.InsertRange
summary: 現在の配列内の指定したインデックスに配列に含まれるすべての要素を追加します
mt_type: method
mt_title: InsertRange(number,array)
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### InsertRange(number,array)

現在の配列内の指定したインデックス配列に含まれるすべての要素を追加します

```cs title="AliceScript"
class Alice.Array;
public void InsertRange(number index,array items);
```

|引数| |
|-|-|
|`index`|挿入する配列内の場所を表すインデックス|
|`item`|挿入する変数を含む配列|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 例
以下は、`4`、`5`、`6`がある配列の先頭に`1`、`2`、`3`を追加します。

```cs title="AliceScript"
var a = [4,5,6];
var b = [1,2,3];
a.Insert(0,b);
print(a); // 出力例 : [1,2,3,4,5,6]
```

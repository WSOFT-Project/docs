---
title: Union
long_title : array.Union
summary: 現在の配列と指定された配列の和集合を取得します
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### Union(array)

現在の配列と指定された配列の和集合を取得します

```cs title="AliceScript"
class Alice.Array;
public array Union(array other);
```

|引数| |
|-|-|
|`other`|和集合を求めるもう一方の配列|

|戻り値| |
|-|-|
|`array`|現在の配列と`other`の和集合|

???note "対応: Alice2.2以降"
    |対応||
    |---|---|
    |AliceScript|2.2、2.3、3.0|
    |AliceSister|2.2、2.3、3.0|
    |Losetta|0.9、0.10|

### 説明
このメソッドは、ふたつの配列から重複する要素を除外して結合します。
これは、加算演算子や[AddRange](./addrange.md)メソッドを使用したときとは異なります。

### 例
以下は、`1`、`2`の含まれる配列と`3`、`4`の含まれる配列の和集合を求めます。

```cs title="AliceScript"
var a = [1,2];
var b = [3,4];
print(a.Union(b)); // 出力例 : [1,2,3,4]
```

[AddRange](./addrange.md)との違いは、このメソッドがインスタンスを変更しないことと、ふたつの配列で重複する要素を追加しない事です。
たとえば、次の例を参照してください。

```cs title="AliceScript"
var a = [1,2];
var b = [2,3];

print(a.Union(b)); // 出力例 : [1,2,3]
a.AddRange(b);
print(a);         // 出力例 : [1,2,2,3]
```
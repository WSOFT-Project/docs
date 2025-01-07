---
title: OrderByDescending
long_title : array.OrderByDescending
summary: 現在の配列の要素を降順で並べ替えます
mt_type: method
mt_title: OrderByDescending()
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### OrderByDescending()

現在の配列の要素を降順で並べ替えます

```cs title="AliceScript"
class Alice.Array;
public array OrderByDescending();
```

|戻り値| |
|-|-|
|`array`|降順で並べ替えられた配列|

???note "対応: Alice2.2以降"
    |対応||
    |---|---|
    |AliceScript|2.2、2.3、3.0、4|
    |AliceSister|2.2、2.3、3.0、4|
    |Losetta|0.9、0.10、0.11|

#### OrderByDescending(delegate)

現在の配列内の各要素にある値を用いて、現在の配列の要素を降順で並べ替えます。

```cs title="AliceScript"
class Alice.Array;
public array OrderByDescending(delegate source);
```

|引数| |
|-|-|
|`source`|配列内の各要素を数値に変換する関数|

|戻り値| |
|-|-|
|`array`|降順で並べ替えられた配列|

???note "対応: Alice2.2以降"
    |対応||
    |---|---|
    |AliceScript|2.2、2.3、3.0、4|
    |AliceSister|2.2、2.3、3.0、4|
    |Losetta|0.9、0.10、0.11|

### 例
以下は、`1`、`3`、`2`、`4`のある配列を降順で並べ替えます。

```cs title="AliceScript"
var a = [1,3,2,4];
print(a.OrderBy()); // 出力例 : [4,3,2,1]
```

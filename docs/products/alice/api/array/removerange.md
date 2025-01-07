---
title: RemoveRange
long_title : array.RemoveRange
summary: 現在の配列から指定された配列に含まれるすべての値を削除します
mt_type: method
mt_title: RemoveRange(array)
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### RemoveRange(array)

現在の配列から指定された配列に含まれるすべての値を削除します

```cs title="AliceScript"
class Alice.Array;
public void RemoveRange(array items);
```

|引数| |
|-|-|
|`items`|配列から削除する値を含む配列|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 例
以下は、`1`、`2`、`3`がある配列から`2`、`3`を削除します。

```cs title="AliceScript"
var a = [1,2,3];
var b = [2,3];
a.RemoveRange(b);
print(a); // 出力例 : [1]
```

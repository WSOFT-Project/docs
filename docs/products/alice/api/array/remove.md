---
title: Remove
long_title : array.Remove
summary: 現在の配列から指定された値を削除します
mt_type: method
mt_title: Remove(params variable)
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### Remove(params variable)

現在の配列から指定された値を削除します

```cs title="AliceScript"
class Alice.Array;
public void Remove(params variable item);
```

|引数| |
|-|-|
|`item`|配列から削除する値。この引数は複数個指定できます。|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 例
以下は、`1`、`2`、`3`がある配列から`3`を削除します。

```cs title="AliceScript"
var a = [1,2,3];
a.Remove(3);
print(a); // 出力例 : [1,2]
```

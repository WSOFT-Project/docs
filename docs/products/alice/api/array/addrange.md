---
title: AddRange
long_title : array.AddRange
summary: 現在の配列の末尾にその配列に含まれるすべての要素を追加します
mt_type: method
mt_title: AddRange(params variable)
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### AddRange(params array)

現在の配列の末尾に値を追加します

```cs title="AliceScript"
class Alice.Array;
public void AddRange(params array items);
```

|引数| |
|-|-|
|`items`|配列の末尾に追加する変数の含まれる配列。この引数は複数個指定できます。|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
以下は、`1`、`2`、`3`がある配列に`4`、`5`、`6`を追加します。

```cs title="AliceScript"
var a = [1,2,3];
var b = [4,5,6];
a.Add(b);
print(a); // 出力例 : [1,2,3,4,5,6]
```

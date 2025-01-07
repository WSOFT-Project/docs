---
title: Add
long_title : array.Add
summary: 現在の配列の末尾に値を追加します
mt_type: method
mt_title: Add(variable)
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### Add(params variable)

現在の配列の末尾に値を追加します

```cs title="AliceScript"
class Alice.Array;
public void Add(params variable item);
```

|引数| |
|-|-|
|`item`|配列の末尾に追加する変数。この引数は複数個指定できます。|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 例
以下は、`1`、`2`、`3`がある配列に`4`を追加します。

```cs title="AliceScript"
var a = [1,2,3];
a.Add(4);
print(a); // 出力例 : [1,2,3,4]
```

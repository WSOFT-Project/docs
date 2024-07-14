---
title: RemoveAt
long_title : array.RemoveAt
summary: 現在の配列の指定したインデックスにある値を削除します
mt_type: method
mt_title: RemoveAt(number)
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### RemoveAt(number)

現在の配列の指定したインデックスにある値を削除します

```cs title="AliceScript"
class Alice.Array;
public void RemoveAt(number index);
```

|引数| |
|-|-|
|`index`|配列から削除する要素のインデックス|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
以下は、`1`、`2`、`3`がある配列から`3`（2番目）を削除します。

```cs title="AliceScript"
var a = [1,2,3];
a.RemoveAt(2);
print(a); // 出力例 : [1,2]
```

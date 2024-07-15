---
title: Flatten
long_title : array.Flatten
summary: 現在の配列内にある配列型の要素を、現在の配列が存在する場所に置き換え、配列を平坦化します
mt_type: method
mt_title: Flatten()
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### Flatten()

現在の配列内にある配列型の要素を、現在の配列が存在する場所に置き換え、配列を平坦化します

```cs title="AliceScript"
class Alice.Array;
public void Flatten();
```

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
以下は、`[1,2],3`と並ぶ配列を平坦化します。

```cs title="AliceScript"
var a = [[1,2],3];
a.Flatten();
print(a); // 出力例 : [1,2,3]
```

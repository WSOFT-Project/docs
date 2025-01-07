---
title: Contains
long_title : array.Contains
summary: 現在の配列内に指定された値が存在するかを示す値を取得します
mt_type: method
mt_title: Contains(variable)
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### Contains(variable)

現在の配列内に指定された値が存在するかを示す値を取得します

```cs title="AliceScript"
class Alice.Array;
public bool Contains(variable item);
```

|引数| |
|-|-|
|`item`|存在を確認する値|

|戻り値| |
|-|-|
|`bool`| 現在の配列内に要素が存在すれば`true`、それ以外の場合は`false`|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 説明

この関数は配列に対して線形探索を行います。このため、この関数の計算量は$O(n)$です。ここで、$n$は配列の要素数です。

### 例
以下は、`1`、`2`、`3`がある配列に`3`があるかを示す値を取得します。

```cs title="AliceScript"
var a = [1,2,3];
print(a.Contains(3)); // 出力例 : true
```

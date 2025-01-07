---
title: All
long_title : array.All
summary: 現在の配列に含まれるすべての要素が条件を満たしているかどうか判定します
mt_type: method
mt_title: All(delegate)
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### All(delegate)

現在の配列に含まれるすべての要素が条件を満たしているかどうか判定します

```cs title="AliceScript"
class Alice.Array;
public bool All(delegate condition);
```

|引数| |
|-|-|
|`condition`|現在の配列のすべての要素が満たす条件を表す式|

|戻り値| |
|-|-|
|`bool`| 現在の配列内のすべての要素が`condition`を満たせば`true`、それ以外の場合は`false`|

???note "対応: Alice2.2以降"
    |対応||
    |---|---|
    |AliceScript|2.2、2.3、3.0、4|
    |AliceSister|2.2、2.3、3.0、4|
    |Losetta|0.9、0.10、0.11|

### 説明
この関数は、現在の配列内のすべての要素が指定された条件と一致するかを判断します。このため、`condition`に一致しない要素が見つかったら、処理はそこで停止します。

この関数は配列に対して線形探索を行います。このため、この関数の計算量は$O(n)$です。ここで、$n$は配列の要素数です。

### 例
以下は、`1`、`2`、`3`がある配列のすべてが`0`以上であることを確認します。

```cs title="AliceScript"
var a = [1,2,3];
print(a.All(x => x > 0)); // 出力例 : true
```

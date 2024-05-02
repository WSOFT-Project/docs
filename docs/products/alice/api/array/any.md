---
title: Any
long_title : array.Any
summary: 現在の配列に含まれるいずれかの要素が条件を満たしているかどうか判定します
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### Any(delegate)

現在の配列に含まれるいずれかの要素が条件を満たしているかどうか判定します

```cs title="AliceScript"
class Alice.Array;
public bool Any(delegate condition);
```

|引数| |
|-|-|
|`condition`|現在の配列のいずれかの要素が満たす条件を表す式|

|戻り値| |
|-|-|
|`bool`| 現在の配列内のいずれかの要素が`condition`を満たせば`true`、それ以外の場合は`false`|

???note "対応: Alice2.2以降"
    |対応||
    |---|---|
    |AliceScript|2.2、2.3、3.0|
    |AliceSister|2.2、2.3、3.0|
    |Losetta|0.9、0.10|

### 例
以下は、`1`、`2`、`3`がある配列に`2`以上の要素が含まれることを確認します。

```cs title="AliceScript"
var a = [1,2,3];
print(a.Any(x => x >= 2)); // 出力例 : true
```

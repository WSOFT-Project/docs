---
title: OfType
long_title : array.OfType
summary: 現在の配列から指定された型の要素のみを取り出します
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### OfType(Type)

現在の配列から指定された型の要素のみを取り出します

```cs title="AliceScript"
class Alice.Array;
public array OfType(Type target);
```

|引数| |
|-|-|
|`target`|取り出す対象の型を表す`Type`オブジェクト|

|戻り値| |
|-|-|
|`array`|`target`が表す型で構成された配列|

???note "対応: Alice2.2以降"
    |対応||
    |---|---|
    |AliceScript|2.2、2.3、3.0|
    |AliceSister|2.2、2.3、3.0|
    |Losetta|0.9、0.10|

### 例
以下は、`1`、`2`、`3`,`"4"`がある配列から数字のみを取り出します。

```cs title="AliceScript"
var a = [1,2,3,"4"];
print(a.OfType(number)); // 出力例 : [1,2,3]
```

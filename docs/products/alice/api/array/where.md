---
title: Where
long_title : array.Where
summary: 現在の配列から指定された条件に一致する要素のみを取り出します
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### Where(delegate)

現在の配列から指定された条件に一致する要素のみを取り出します

```cs title="AliceScript"
class Alice.Array;
public array Where(delegate condition);
```

|引数| |
|-|-|
|`condition`|取り出す要素が満たす式|

|戻り値| |
|-|-|
|`array`|`condition`に一致する要素を含む配列|

???note "対応: Alice2.2以降"
    |対応||
    |---|---|
    |AliceScript|2.2、2.3、3.0|
    |AliceSister|2.2、2.3、3.0|
    |Losetta|0.9、0.10|

### 例
以下は、`1`、`2`、`3`,`4`がある配列から`2`以下のものを取り出します。

```cs title="AliceScript"
var a = [1,2,3,4];
print(a.Where(item => item < 3)); // 出力例 : [1,2]
```

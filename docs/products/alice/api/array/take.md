---
title: Take
long_title : array.Take
summary: 現在の配列内の先頭から指定された個数の要素を取得します
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### Take(number)

現在の配列内の先頭から指定された個数の要素を取得します

```cs title="AliceScript"
class Alice.Array;
public array Take(number count);
```
|引数| |
|-|-|
|`count`|取得する要素の個数|

|戻り値| |
|-|-|
|`array`|`count`個の要素を含む配列|

???note "対応: Alice2.2以降"
    |対応||
    |---|---|
    |AliceScript|2.2、2.3、3.0|
    |AliceSister|2.2、2.3、3.0|
    |Losetta|0.9、0.10|

### 例
以下は、`1`、`2`、`3`,`4`から先頭2つの要素を取得します。

```cs title="AliceScript"
var a = [1,2,3,4];
print(a.Take(2)); // 出力例 : [1,2]
```

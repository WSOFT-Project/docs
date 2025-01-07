---
title: Skip
long_title : array.Skip
summary: 現在の配列内の先頭から指定された数の要素を取り除いた配列を取得します
mt_type: method
mt_title: Skip(number)
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### Skip(number)

現在の配列内の先頭から指定された数の要素を取り除いた配列を取得します

```cs title="AliceScript"
class Alice.Array;
public array Skip(number count);
```

|引数| |
|-|-|
|`count`|配列を返す前に飛ばす要素の個数|

|戻り値| |
|-|-|
|`array`|`count`個の要素を除いた配列|

???note "対応: Alice2.2以降"
    |対応||
    |---|---|
    |AliceScript|2.2、2.3、3.0、4|
    |AliceSister|2.2、2.3、3.0、4|
    |Losetta|0.9、0.10、0.11|

### 例
以下は、`1`、`2`、`3`,`4`から先頭2つの要素を除いた配列を取得します。

```cs title="AliceScript"
var a = [1,2,3,4];
print(a.Skip(2)); // 出力例 : [3,4]
```

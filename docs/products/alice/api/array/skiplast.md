---
title: SkipLast
long_title : array.SkipLast
summary: 現在の配列内の末尾から指定された数の要素を取り除いた配列を取得します
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### SkipLast(number)

現在の配列内の末尾から指定された数の要素を取り除いた配列を取得します

```cs title="AliceScript"
class Alice.Array;
public array SkipLast(number count);
```
|引数| |
|-|-|
|`count`|現在の配列内の末尾から省略する要素の個数|

|戻り値| |
|-|-|
|`array`|末尾から`count`個の要素を除いた配列|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 説明
この関数は現在の配列の末尾から指定個数だけ取り除いた新しい配列を作成します。
`count`の値が0以下の場合、この関数は配列のコピーを作成します。
また、`count`の値が配列の要素数より少ない場合、空の配列を返します。

### 例
以下は、`1`、`2`、`3`,`4`から末尾2つの要素を除いた配列を取得します。

```cs title="AliceScript"
var a = [1,2,3,4];
print(a.SkipLast(2)); // 出力例 : [1,2]
```

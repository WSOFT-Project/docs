---
title: Skip
long_title : array.Skip
summary: 現在の配列内の先頭から指定された数の要素を取り除いた配列を取得します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript2.2

現在の配列内の先頭から指定された数の要素を取り除いた配列を取得します

```cs title="AliceScript"
class Alice.Array;
array Skip(number count);
```
|引数| |
|-|-|
|`count`|配列を返す前に飛ばす要素の個数|

|戻り値| |
|-|-|
|`array`|`count`個の要素を除いた配列|

### 例
以下は、`1`、`2`、`3`,`4`から先頭2つの要素を除いた配列を取得します。

```cs title="AliceScript"
var a = [1,2,3,4];
print(a.Skip(2)); // 出力例 : [3,4]
```

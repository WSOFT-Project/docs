---
title: Union
long_title : array.Union
summary: 現在の配列と指定された配列の和集合を取得します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript2.2

現在の配列と指定された配列の和集合を取得します

```cs title="AliceScript"
class Alice.Array;
array Union(array other);
```

|引数| |
|-|-|
|`other`|和集合を求めるもう一方の配列|

|戻り値| |
|-|-|
|`array`|現在の配列と`other`の和集合|

### 例
以下は、`1`、`2`の含まれる配列と`3`、`4`の含まれる配列の和集合を求めます。

```cs title="AliceScript"
var a = [1,2];
var b = [3,4];
print(a.Union(b)); // 出力例 : [1,2,3,4]
```

[AddRange](./addrange.md)との違いは、ふたつの配列で重複する要素を追加しない事です。
たとえば、次の例を参照してください。

```cs title="AliceScript"
var a = [1,2];
var b = [2,3];
print(a.Union(b)); // 出力例 : [1,2,3]
```
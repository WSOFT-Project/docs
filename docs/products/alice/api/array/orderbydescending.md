---
title: OrderByDescending
long_title : array.OrderByDescending
summary: 現在の配列の要素を降順で並べ替えます
---
### 定義
名前空間:Alice / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript2.2

現在の配列の要素を降順で並べ替えます

```cs title="AliceScript"
namespace Alice;
array OrderByDescending();
```

|戻り値| |
|-|-|
|`array`|昇順で並べ替えられた配列|

### 例
以下は、`1`、`3`、`2`、`4`のある配列を降順で並べ替えます。

```cs title="AliceScript"
var a = [1,3,2,4];
print(a.OrderBy()); // 出力例 : [4,3,2,1]
```

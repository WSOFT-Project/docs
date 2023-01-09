---
title: RemoveRange
summary: 現在の配列から指定された配列に含まれるすべての値を削除します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の配列から指定された配列に含まれるすべての値を削除します

```cs title="AliceScript"
namespace Alice;
void RemoveRange(array items);
```

|引数| |
|-|-|
|`items`|配列から削除する値を含む配列|


### 例
以下は、`1`、`2`、`3`がある配列から`2`、`3`を削除します。

```cs title="AliceScript"
var a = [1,2,3];
var b = [2,3];
a.RemoveRange(b);
print(a); // 出力例 : [1]
```

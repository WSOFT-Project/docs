---
title: Remove
summary: 現在の配列から指定された値を削除します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の配列から指定された値を削除します

```cs title="AliceScript"
namespace Alice;
void Remove(params variable item);
```

|引数| |
|-|-|
|`item`|配列から削除する値。この引数は可変長個指定できます。|


### 例
以下は、`1`、`2`、`3`がある配列から`3`を削除します。

```cs title="AliceScript"
var a = [1,2,3];
a.Remove(3);
print(a); // 出力例 : [1,2]
```

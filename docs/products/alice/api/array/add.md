---
title: Add
long_title : array.Add
summary: 現在の配列の末尾に値を追加します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の配列の末尾に値を追加します

```cs title="AliceScript"
namespace Alice;
void Add(params variable item);
```

|引数| |
|-|-|
|`item`|配列の末尾に追加する変数。この引数は可変長個指定できます。|


### 例
以下は、`1`、`2`、`3`がある配列に`4`を追加します。

```cs title="AliceScript"
var a = [1,2,3];
a.Add(4);
print(a); // 出力例 : [1,2,3,4]
```

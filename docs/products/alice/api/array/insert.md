---
title: Insert
long_title : array.Insert
summary: 現在の配列内の指定したインデックスにその値を挿入します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の配列内の指定したインデックスにその値を挿入します

```cs title="AliceScript"
class Alice.Array;
void Insert(number index,variable item);
```

|引数| |
|-|-|
|`index`|挿入する配列内の場所を表すインデックス|
|`item`|挿入する変数|


### 例
以下は、`2`、`3`、`4`がある配列の先頭に`1`を追加します。

```cs title="AliceScript"
var a = [2,3,4];
a.Insert(0,1);
print(a); // 出力例 : [1,2,3,4]
```

---
title: InsertRange
long_title : array.InsertRange
summary: 現在の配列内の指定したインデックスに配列に含まれるすべての要素を追加します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の配列内の指定したインデックス配列に含まれるすべての要素を追加します

```cs title="AliceScript"
class Alice.Array;
void InsertRange(number index,array items);
```

|引数| |
|-|-|
|`index`|挿入する配列内の場所を表すインデックス|
|`item`|挿入する変数を含む配列|


### 例
以下は、`4`、`5`、`6`がある配列の先頭に`1`、`2`、`3`を追加します。

```cs title="AliceScript"
var a = [4,5,6];
var b = [1,2,3];
a.Insert(0,b);
print(a); // 出力例 : [1,2,3,4,5,6]
```

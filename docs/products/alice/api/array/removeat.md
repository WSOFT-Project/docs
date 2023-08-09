---
title: RemoveAt
long_title : array.RemoveAt
summary: 現在の配列の指定したインデックスにある値を削除します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の配列の指定したインデックスにある値を削除します

```cs title="AliceScript"
class Alice.Array;
void RemoveAt(number index);
```

|引数| |
|-|-|
|`index`|配列から削除する要素のインデックス|


### 例
以下は、`1`、`2`、`3`がある配列から`3`（2番目）を削除します。

```cs title="AliceScript"
var a = [1,2,3];
a.RemoveAt(2);
print(a); // 出力例 : [1,2]
```

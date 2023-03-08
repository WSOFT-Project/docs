---
title: SequenceEqual
long_title : array.SequenceEqual
summary: 現在の配列ともう一方の配列の要素が等しいかどうかを判定します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript2.2

現在の配列ともう一方の配列の要素が等しいかどうかを判定します

```cs title="AliceScript"
namespace Alice;
bool SequenceEqual(array other);
```

|引数| |
|-|-|
|`other`|現在の配列と比較する配列|

|戻り値| |
|-|-|
|`bool`| 現在の配列と比較する配列内のすべての要素が等しければ`true`、それ以外の場合は`false`|

### 例
以下は、`1`、`2`、`3`がある配列ふたつを定義し、それらが等しいことを確かめます。

```cs title="AliceScript"
var a = [1,2,3];
var b = [1,2,3];
print(a.SequenceEqual(b)); // 出力例 : true
```

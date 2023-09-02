---
title: AddRange
long_title : array.AddRange
summary: 現在の配列の末尾にその配列に含まれるすべての要素を追加します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の配列の末尾に値を追加します

```cs title="AliceScript"
class Alice.Array;
void AddRange(params array items);
```

|引数| |
|-|-|
|`items`|配列の末尾に追加する変数の含まれる配列。この引数は可変長個指定できます。|


### 例
以下は、`1`、`2`、`3`がある配列に`4`、`5`、`6`を追加します。

```cs title="AliceScript"
var a = [1,2,3];
var b = [4,5,6];
a.Add(b);
print(a); // 出力例 : [1,2,3,4,5,6]
```

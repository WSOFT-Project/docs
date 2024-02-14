---
title: Foreach
long_title : array.Foreach
summary: 現在の配列の各要素について、指定されたデリゲートを実行します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の配列の各要素について、指定されたデリゲートを実行します。デリゲートの第一引数にはその要素が渡されます。

```cs title="AliceScript"
class Alice.Array;
void Foreach(delegate task);
```

|引数| |
|-|-|
|`task`|繰り返しを実行するデリゲート。第一引数にはその要素が渡されます。|

### 例
以下は、`1`、`2`、`3`がある配列の中身を順番に出力する例です。

```cs title="AliceScript"
var a = [1,2,3];
a.Foreach(item => print(item));

// 出力例
// 1
// 2
// 3
```
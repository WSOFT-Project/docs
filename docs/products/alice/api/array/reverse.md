---
title: Reverse
long_title : array.Reverse
summary: 現在の配列の要素の順序を反転させます
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の配列の要素の順序を反転させます

```cs title="AliceScript"
class Alice.Array;
void Reverse();
```

現在の配列内の指定した範囲の要素の順序を反転させます

```cs title="AliceScript"
class Alice.Array;
void Reverse(number index,number count);
```

|引数| |
|-|-|
|`index`|反転を開始するインデックス|
|`count`|反転を実行する要素の数|

### 例
以下は、`1`、`2`、`3`と並ぶ配列を降順にソートします。

```cs title="AliceScript"
var a = [1,2,3];
a.Reverse();
print(a); // 出力例 : [3,2,1]
```

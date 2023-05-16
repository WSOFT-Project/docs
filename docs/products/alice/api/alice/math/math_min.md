---
title: math_min
summary: 指定された複数の数値のうち、もっとも小さい数値を返します。
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

指定された複数の数値のうち、もっとも小さい数値を返します。

```cs title="AliceScript"
namespace Alice.Math;
number math_min(number val1,params number vals);
```

|引数| |
|-|-|
|`val1`|比較する整数の最初の数値。|
|`vals`|比較する整数の残りの値。|

|戻り値| |
|-|-|
|`number`|引数の中でもっとも小さい数値。|

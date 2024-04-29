---
title: math_max
summary: 指定された複数の数値のうち、もっとも大きい数値を返します。
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

#### math_max(number,params number)

指定された複数の数値のうち、もっとも大きい数値を返します。

```cs title="AliceScript"
namespace Alice.Math;
number math_max(number value,params number values);
```

|引数| |
|-|-|
|`value`|比較する整数の最初の数値。|
|`values`|比較する整数の残りの値。|

|戻り値| |
|-|-|
|`number`|引数の中でもっとも大きい数値。|

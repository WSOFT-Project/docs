---
title: math_floor
summary: 指定した数以下の数のうち、最大の整数値を返します。
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

指定した数以下の数のうち、最大の整数値を返します。

```cs title="AliceScript"
namespace Alice.Math;
number math_floor(number value);
```

|引数| |
|-|-|
|`value`|切り捨てたい対象の数値|

|戻り値| |
|-|-|
|`number`|`value`の整数部|

### 説明
`value`の値が[math_NaN](./math_nan.md)の場合、この関数は[math_NaN](./math_nan.md)を返します。また`value`の値が[math_Infinity](./math_infinity.md)の場合、この関数も[math_Infinity](./math_infinity.md)を返し、`value`の値が[math_NegativeInfinity](./math_negativeinfinity.md)の場合、この関数も[math_NegativeInfinity](./math_negativeinfinity.md)を返します。

小数部を切り上げたいときは[math_celling](./math_celling.md)を、四捨五入したいときは[math_round](./math_round.md)を使用してください。

この関数は、IEEE 754 セクション4に従った切り捨てを行います。
これは、一般に「負の無限大向きの丸め」と呼ばれています。

この関数の丸め方は、`value`の符号によって異なります。

- `value`が正の場合、小数部がすべて切り捨てられます。
- `value`が負の場合、小数部が存在する場合は負の無限大方向に丸めます。

この関数の動作は[math_truncate](./math_truncate.md)や[math_celling](./math_celling.md)とは異なることにご注意ください。

### 例
次の例では、いくつかの数の小数部を切り捨てています。

```cs title="AliceScript"
using Alice.Math;

print(math_floor(12.3));  //出力 : 12
print(math_floor(-12.3)); //出力 : -13
```
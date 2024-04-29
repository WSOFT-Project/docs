---
title: math_isPrime
summary: 指定した数値が素数であるかを表す値を取得します。
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

#### math_isPrime(number)

指定した数値が素数であるかを表す値を取得します。

```cs title="AliceScript"
namespace Alice.Math;
public bool math_isPrime(number value);
```

|引数| |
|-|-|
|`value`|判定対象の数値。|

|戻り値| |
|-|-|
|`number`|`value`が素数であれば`true`、それ以外の場合は`false`。|

### 説明
素数は、`1`とその数自身のみを約数に持つ数と定義されています。

`value`の値が[math_NaN](./math_nan.md)、[math_Infinity](./math_infinity.md)、[math_NegativeInfinity](./math_negativeinfinity.md)または`2`未満の数の場合、この関数は`false`を返します。

### 例
次の例では、一桁の自然数のうち、素数のものを表示しています。

```cs title="AliceScript"
using Alice.Math;

for(var n = 0;n < 10; n++)
{
    if(math_isPrime(n))
    {
        print(n);
    }
}
```
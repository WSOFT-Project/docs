---
title: math_NaN
summary: 非数の値を表します
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: Alice3.0

属性: 定数

非数(`NaN`)の値を表します。

```cs title="AliceScript"
namespace Alice.Math;
public readonly number math_NaN;
```

### 説明
関数や演算子は、数学演算の結果が定義されていない場合にこの値を返します。
たとえば、${0 \div 0 }$の結果は`NaN`です。

```cs title="AliceScript"
print(0 / 0); //出力 : NaN
```

また、次のように`NaN`に対する演算を行った場合、常に`NaN`が返されます。

```cs title="AliceScript"
using Alice.Math;

print(math_NaN + 1); //出力 : NaN
```

演算結果の値が`NaN`かどうかを判断するには、等価演算子(`==`)ではなく、[math_isNaN](./math_isnan.md)関数を使用してください。
常に`false`が返るため、`NaN`の値同士の等価演算を行うことはできません。

```cs title="AliceScript"
using Alice.Math;

var maybeNaN = 0 / 0;

print($"NaN == NaN : {maybeNaN == math_NaN}"); //出力 : false
print($"math_isNaN : {math_isNaN(maybeNaN)}"); //出力 : true
```

Alice2.3以前のバージョンでは、定数`NaN`を使用することで、同等の値を得られます。

### 例
次の例では、`NaN`を表示しています。

```cs title="AliceScript"
using Alice.Math;

print(math_NaN); // 出力 : NaN
```
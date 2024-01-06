---
title: math_maxValue
summary: 扱うことができる最大値を表します
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: Alice3.0

属性: 定数

扱うことができる最大値を表します。

```cs title="AliceScript"
namespace Alice.Math;
public readonly number math_maxValue = 1.7976931348623157E+308;
```

### 説明
AliceScriptの数値型はIEEE754に準拠しており、扱うことのできる最大値は、${1.7976931348623157 \times 10^{308} }$です。

数値型のとりうる範囲については、[number](../../number/index.md)や、[倍精度浮動小数点数 : Wikipedia](https://ja.wikipedia.org/wiki/%E5%80%8D%E7%B2%BE%E5%BA%A6%E6%B5%AE%E5%8B%95%E5%B0%8F%E6%95%B0%E7%82%B9%E6%95%B0)を参照してください。

### 例
次の例では、`math_maxValue`を表示しています

```cs title="AliceScript"
using Alice.Math;

print(math_maxValue); // 出力例 : 1.7976931348623157E+308
```
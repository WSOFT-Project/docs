---
title: math_infinity
summary: 正の無限大を表します。
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: Alice3.0

属性: 定数

正の無限大を表します。

```cs title="AliceScript"
namespace Alice.Math;
public readonly number math_infinity;
```

### 説明
この定数の値は、正の数値を`0`で除算するか、操作の結果が正の方向にオーバーフローした場合に返ります。

値が正の無限大かどうかを判断するには、[math_IsPositiveInfinity](./math_ispositiveinfinity.md)を使用してください。

Alice2.3以前のバージョンでは、定数`infinity`を使用することで、同等の値を得られます。

### 例
次の例では、正の無限大を表示しています。

```cs title="AliceScript"
using Alice.Math;

print(math_infinity); // 出力例 : ∞
```
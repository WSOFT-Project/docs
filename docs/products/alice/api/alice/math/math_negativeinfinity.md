---
title: math_negativeInfinity
summary: 負の無限大を表します。
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: Alice3.0

属性: 定数

負の無限大を表します。

```cs title="AliceScript"
namespace Alice.Math;
public readonly number math_negativeInfinity;
```

### 説明
この定数の値は、負の数値を`0`で除算するか、操作の結果が負の方向にオーバーフローした場合に返ります。

値が正の無限大かどうかを判断するには、[math_IsNagativeInfinity](./math_negativeinfinity.md)を使用してください。

Alice2.3以前のバージョンでは、定数`-1 * infinity`を使用することで、同等の値を得られます。

### 例
次の例では、負の無限大を表示しています。

```cs title="AliceScript"
using Alice.Math;

print(math_negativeInfinity); // 出力例 : -∞
```
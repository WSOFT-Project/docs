---
title: math_infinity
summary: 正の無限大を表します。
---

### 定義
名前空間: Alice.Math<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Math.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Math.cs)

正の無限大を表します。

```cs title="AliceScript"
namespace Alice.Math;
public readonly number math_infinity;
```

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

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
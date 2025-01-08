---
title: math_negativeInfinity
summary: 負の無限大を表します。
mt_type: value
---

### 定義
名前空間: Alice.Math<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Math.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Math.cs)

負の無限大を表します。

```cs title="AliceScript"
namespace Alice.Math;
public readonly number math_negativeInfinity;
```

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0、4|
    |AliceSister|3.0、4|
    |Losetta|0.10、0.11|

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
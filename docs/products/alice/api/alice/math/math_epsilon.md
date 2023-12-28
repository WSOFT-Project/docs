---
title: math_epsilon
summary: 0より大きい最小の値を表します
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: Alice3.0

属性: 定数

0より大きい最小の値を表します。

```cs title="AliceScript"
namespace Alice.Math;
public readonly number math_epsilon = 4.94065645841247E-324;
```

### 説明
この定数の値は、`0`と比較したときに`false`が返る最小の正の値を返します。

### 例
次の例では、`math_epsilon`と`0`を比較しています。

```cs title="AliceScript"
using Alice.Math;

print(math_epsilon == 0); // 出力例 : false
```
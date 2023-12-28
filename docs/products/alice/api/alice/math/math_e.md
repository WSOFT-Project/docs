---
title: math_E
summary: 自然対数の底を表します。
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 定数

オイラー定数である、`e`で表される自然対数の底を表します。

```cs title="AliceScript"
namespace Alice.Math;
public readonly number math_E = 2.7182818284590452354;
```

### 例
次の例では、自然対数の底を取得します。

```cs title="AliceScript"
using Alice.Math;

print(math_e()); // 出力例 : 2.7182818284590452354
```
---
title: math_e
summary: 自然対数の底を表します。
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

オイラー定数である、`e`で表される自然対数の底を返します。

```cs title="AliceScript"
namespace Alice.Math;
number math_e();
```

|戻り値| |
|-|-|
|`number`|自然対数の底|

### 例
次の例では、自然対数の底を取得します。

```cs title="AliceScript"
using Alice.Math;

print(math_e()); // 出力例 : 2.718281828459045
```
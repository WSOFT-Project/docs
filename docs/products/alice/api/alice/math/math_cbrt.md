---
title: math_cbrt
summary: 指定された数値の立方根を返します。
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

指定された数値の立方根を返します。

```cs title="AliceScript"
namespace Alice.Math;
number math_cbrt(number value);
```

|引数| |
|-|-|
|`value`|立方根を求める対象の数値。|

|戻り値| |
|-|-|
|`number`|`value`の立方根。|

!!!warning "実装の非互換性"
    この関数はAliceSisterでは実装されていません。LosettaやAliceScriptを使用することを検討してください。

### 例
次の例では、$3^3$の値を取得します。

```cs title="AliceScript"
using Alice.Math;

var v=3;
print(math_cbrt(v)); // 出力例 : 27
```
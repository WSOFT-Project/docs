---
title: math_celling
summary: 指定された数以上の数のうち、最小の整数値を返します。
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

指定された数以上の数のうち、最小の整数値を返します。

```cs title="AliceScript"
namespace Alice.Math;
number math_celling(number value);
```

|引数| |
|-|-|
|`value`|指定された数以上の数の、指定する数値。|

|戻り値| |
|-|-|
|`number`|指定された数以上のうち、最小の整数値を返します。|

### 例
次の例では、`0.1`の正方向に近い整数を取得します。

```cs title="AliceScript"
using Alice.Math;

var v=0.1;
print(math_celling(v)); // 出力例 : 1
```
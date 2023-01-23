---
title: math_sqrt
summary: 指定された数値の平方根を返します。
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

指定された数値の平方根を返します。

```cs title="AliceScript"
namespace Alice.Math;
number math_sqrt(number value);
```

|引数| |
|-|-|
|`value`|平方根を求める対象の数値。|

|戻り値| |
|-|-|
|`number`|`value`の平方根。|

### 例
次の例では、$3^2$の値を取得します。

```cs title="AliceScript"
using Alice.Math;

var v=3;
print(math_sqrt(v)); // 出力例 : 9
```
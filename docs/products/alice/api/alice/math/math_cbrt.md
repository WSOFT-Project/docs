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

### 説明
LosettaとAliceScriptでのこの関数は、内部的にCランタイムを呼び出しています。
正確な結果および有効な値の範囲は、オペレーティングシステムやアーキテクチャによって異なる可能性があります。

AliceSisterでのこの関数は、[math_pow(value, 1/3)](./math_pow.md)と同じ動作をします。そのため、そのほかの実装と比較して精度が低下する可能性があります。

任意の値乗根を計算する場合には、[math_pow](./math_pow.md)を使用してください。

### 例
次の例では、$27$の立方根を取得します。

```cs title="AliceScript"
using Alice.Math;

var value = 27;
print(math_cbrt(value)); // 出力例 : 3
```
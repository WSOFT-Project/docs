---
title: math_factorial
summary: 指定した数値の階乗を返します
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: Alice3.0

属性: 関数

#### math_factorial(number)

指定した数値の階乗を返します。

```cs title="AliceScript"
namespace Alice.Math;
public number math_factorial(number n) requires(value >= 0);
```

|引数| |
|-|-|
|`n`|階乗の計算を行うための値。この値は0以上の整数である必要があります。|

|戻り値| |
|-|-|
|`number`|`n`の階乗の値。|

### 説明
**階乗**は、1から`n`までのすべての整数の積です。たとえば、3の階乗は以下のように計算します。

$$ 3! = 3 \times 2 \times 1 = 6 $$

階乗の計算では、$0! = 1$と定義されています。そのため、`math_factorial(0)`は、常に`1`を返します。

AliceScriptの[数値型](../../number/index.md)では、倍精度浮動小数点数を使用しているため、$n = 171$以上の値を指定した場合は常に[math_infinity](./math_infinity.md)を返します。

### 例
次の例では、いくつかの数の階乗を計算しています。

```cs title="AliceScript"
using Alice.Math;

var fact3 = math_factorial(3);
var fact5 = math_factorial(5);

print($"3の階乗は{fact3}です。");
print($"5の階乗は{fact5}です。");
```

次の例では、`0`の階乗が`1`であることを確認します。

```cs title="AliceScript"
using Alice.Math;
using Alice.Diagnostics;

var fact0 = math_factorial(0);

// fact0!=0ならエラーになる
assertEqual(fact0,0);
```
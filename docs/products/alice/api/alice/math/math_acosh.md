---
title: math_acosh
summary: 逆双曲線余弦が指定した数となる角度を返します。
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

逆双曲線余弦（ハイパーポリックコサイン）が指定した数となる角度を返します。

```cs title="AliceScript"
namespace Alice.Math;
public number math_acosh(number value);
```

|引数| |
|-|-|
|`value`|逆双曲線余弦を表す値。この値は`1`以上`PositiveInfinity`以下である必要があります。|

|戻り値| |
|-|-|
|`number`|弧度法で$0\leqq\theta\leqq\pi$の範囲の角度$\theta$ ただし、`value`が[NaN](./math_isnan.md)の場合は`NaN`|

### 説明
`math_acosh()`関数は、引数として与えられた数値の逆双曲線余弦（ハイパーポリックコサイン）をラジアン単位で返します。

この関数に入力する`value`の値は$0<value<\infin$である必要があります。

取得した弧度法でのラジアンを角度に変換するには、角度に180 / [math_pi](./math_pi.md)を乗算します。

LosettaとAliceScriptでは、この関数は基になる C ランタイムを呼び出します。正確な結果または有効な入力範囲は、オペレーティング システムやアーキテクチャによって異なる場合があります。

AliceSisterでは、この関数は以下の数式を計算し、その結果を返します。

$$
acosh(x) = \ln(x + \sqrt{x^2-1})
$$

### 例
次の例では、`2.0`の逆双曲線余弦を計算しています。

```cs title="AliceScript"
using Alice.Math;

number inputValue  = 2.0;
print(math_acosh(inputValue )); // 出力例 : 1.3169578969248166
```
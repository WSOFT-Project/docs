---
title: math_asinh
summary: 逆双曲線正弦が指定した数となる角度を返します。
mt_type: function
mt_title: math_asinh(number)
---

### 定義
名前空間: Alice.Math<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Math.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Math.cs)

#### math_asinh(number)

逆双曲線正弦（ハイパーポリックサイン）が指定した数となる角度を返します。

```cs title="AliceScript"
namespace Alice.Math;
public number math_asinh(number value);
```

|引数| |
|-|-|
|`value`|逆双曲線正弦を表す値。この値は`NegativeInfinity`以上`PositiveInfinity`以下である必要があります。|

|戻り値| |
|-|-|
|`number`|弧度法で$0\leq\theta\leq\pi$の範囲の角度$\theta$ ただし、`value`が[NaN](./math_isnan.md)の場合は`NaN`|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 説明
`math_asinh()`関数は、引数として与えられた数値の逆双曲線正弦(ハイパーポリックサイン)をラジアン単位で返します。

取得した弧度法でのラジアンを角度に変換するには、角度に180 / [math_pi](./math_pi.md)を乗算します。

LosettaとAliceScriptでは、この関数は基になる C ランタイムを呼び出します。正確な結果または有効な入力範囲は、オペレーティング システムやアーキテクチャによって異なる場合があります。

AliceSisterでは、この関数は以下の数式を計算し、その結果を返します。

$$
asinh(x) = \ln(x + \sqrt{x^2+1})
$$

### 例
次の例では、`2.0`の逆双曲線正弦を計算しています。

```cs title="AliceScript"
using Alice.Math;

number inputValue  = 2.0;
print(math_asinh(inputValue )); // 出力例 : 1.4436354751788103
```
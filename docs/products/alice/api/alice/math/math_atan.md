---
title: math_atan
summary: タンジェントが指定した数となる角度を返します。
mt_type: function
mt_title: math_atan(number)
---

### 定義
名前空間: Alice.Math<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Math.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Math.cs)

#### math_atan(number)

タンジェント（正接）が指定した数となる角度を返します。

```cs title="AliceScript"
namespace Alice.Math;
public number math_atan(number value);
```

|引数| |
|-|-|
|`value`|タンジェントを表す値。|

|戻り値| |
|-|-|
|`number`|弧度法で$-\pi/2\leq\theta\leq\pi/2$の範囲の角度$\theta$。ただし、`value`が[NaN](./math_isnan.md)の場合は`NaN`、また`value`が`NegativeInfinity`の場合は$-\frac{\pi}{2}$、`PositiveInfinity`の場合は$\frac{\pi}{2}$。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 説明
`math_atanh()`関数は、引数として与えられた数値の逆正接（アークタンジェント）をラジアン単位で返します。

この関数の正の戻り値は、x軸から反時計回りの回転角を表し、負の戻り値は時計回りの回転角を表します。

この関数は、[math_atan2](./math_atan2.md)とは異なり定点のy座標を考慮しません。そのためこの関数は$- \frac{\pi}{2} \leq atan(x) \leq \frac{\pi}{2}$の値をとります。単位円中の座標が必要な場合は[math_atan2](./math_atan2.md)を使用してください。

取得した弧度法でのラジアンを角度に変換するには、角度に180 / [math_pi](./math_pi.md)を乗算します。

この関数は基になる C ランタイムを呼び出します。正確な結果または有効な入力範囲は、オペレーティング システムやアーキテクチャによって異なる場合があります。
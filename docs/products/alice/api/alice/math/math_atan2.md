---
title: math_atan2
summary: タンジェントが指定した数の商となる角度を返します。
mt_type: function
mt_title: math_atan2(number,number)
---

### 定義
名前空間: Alice.Math<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Math.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Math.cs)

#### math_atan2(number,number)

タンジェントが指定した数の商となる角度を返します。

```cs title="AliceScript"
namespace Alice.Math;
public number math_atan2(number y, number x);
```

|引数| |
|-|-|
|`y`|点の y 座標。|
|`x`|点の x 座標。|

|戻り値| |
|-|-|
|`number`|弧度法で$-\pi\leq\theta\leq\pi$ の範囲の角度 $\theta$|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 説明
`math_acosh()`関数は、引数として与えられた数値の逆正接（アークタンジェント）をラジアン単位で返します。

戻り値の角度$\theta$は$tan(\theta) = \frac{y}{x}$のようにラジアン単位で返します。
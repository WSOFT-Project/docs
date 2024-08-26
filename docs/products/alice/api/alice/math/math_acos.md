---
title: math_acos
summary: コサインが指定した数となる角度を返します。
mt_type: function
mt_title: math_acos(number)
---

### 定義
名前空間: Alice.Math<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Math.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Math.cs)

#### math_acos(number)

コサインが指定した数となる角度を返します。

```cs title="AliceScript"
namespace Alice.Math;
public number math_acos(number value);
```

|引数| |
|-|-|
|`value`|コサインを表す値。この値は`-1`以上`1`以下である必要があります。|

|戻り値| |
|-|-|
|`number`|弧度法で$0\leq\theta\leq\pi$の範囲の角度$\theta$|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 説明
`math_acos()`関数は、引数として与えられた数値の逆余弦（アークコサイン）をラジアン単位で返します。
アークコサインとは、コサインの逆関数のことです。

取得した弧度法でのラジアンを角度に変換するには、戻り値に`180/math_pi`を乗算します。

### 例
$cos(0)$の値は`1`と定義されています。
次の例では、それを確認します。

```cs title="AliceScript"
using Alice.Math;

number cosValue = 0;
print(math_acos(cosValue)); // 出力例 : 1
```
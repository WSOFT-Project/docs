---
title: math_log
summary: 指定した数の対数を返します。
mt_type: function
mt_title: math_log(number)
mt_summary: 指定した数値の自然対数を返します。
mt_title: math_log(number,number)
mt_summary: 指定した数値の指定した底での対数を返します。
---

### 定義
名前空間: Alice.Math<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Math.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Math.cs)

#### math_log(number)

指定した数値の自然対数を返します。

```cs title="AliceScript"
namespace Alice.Math;
public number math_log(number value);
```

|引数| |
|-|-|
|`value`|対数を求めたい数値|

|戻り値| |
|-|-|
|`number`|$\ln{value}$(または$\log_e{value}$)の値。ただし、`value`が`NaN`や負の値の場合は`NaN`、`0`の場合は`NegativeInfinity`、`PositiveInfinity`の場合は`PositiveInfinity`。|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

#### math_log(number,number)

指定した数値の指定した底での対数を返します。

```cs title="AliceScript"
namespace Alice.Math;
number math_log(number value, number base);
```

|引数| |
|-|-|
|`value`|対数を求めたい数値|
|`base`|対数の底|

|戻り値| |
|-|-|
|`number`|$\log_{base}value$の値|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 説明
この関数は、$\log_{base} value$の値を求めます。
この関数は、以下の表のとおりに値を返します。

`value`の値|`base`の値|戻り値
---|---|---
$value > 0$|$0 < base < 1$|$\log_{base}value$
$value > 0$|$base > 1$|$\log_{base}value$
$value < 0$|任意の値|`NaN`
任意の値|$base < 0$|`NaN`
$value \not ={1}$|$base = 0$|`NaN`
$value \not ={1}$|`PositiveInfinity`|`NaN`
`NaN`|任意の値|`NaN`
任意の値|`NaN`|`NaN`
任意の値|$base = 1$|`NaN`
$value=0$|$0<base<1$|`PositiveInfinity`
$value=0$|$base>1$|`NegativeInfinity`
`PositiveInfinity`|$0<base<1$|`NegativeInfinity`
`PositiveInfinity`|$base>1$|`PositiveInfinity`
$value=1$|$base=0$|`0`
$value=1$|`PositiveInfinity`|`0`

この関数は、内部的にCランタイムを呼び出しています。
正確な結果および有効な値の範囲は、オペレーティングシステムやアーキテクチャによって異なる可能性があります。
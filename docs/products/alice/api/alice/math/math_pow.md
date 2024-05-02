---
title: math_pow
summary: 指定された数値を指定した値で累乗した値を返します。
---

### 定義
名前空間: Alice.Math<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Math.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Math.cs)

#### math_pow(number,number)

指定された数値を指定した値で累乗した値を返します。

```cs title="AliceScript"
namespace Alice.Math;
public number math_pow(number x, number y);
```

|引数| |
|-|-|
|`x`|累乗対象の数値。|
|`y`|累乗数を指定する数値。|

|戻り値| |
|-|-|
|`number`|`x`を`y`で累乗した値。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 説明
この関数は、$x^y$の値を求めます。
この関数は、以下の表のとおりに値を返します。

|`x`の値|`y`の値|戻り値|
|---|---|---|
|`NaN`|$0$でない任意の値|`NaN`|
|`NaN`|$0$|$1$^†^|
|`NaN`でない任意の値|$0$|$1$|
|$1$|`NaN`でない任意の値|$1$|
|$1$|`NaN`|$1$^†^|
|`NegativeInfinity`|$0$未満の値|$0$|
|`NegativeInfinity`|正の整数かつ奇数|`NegativeInfinity`|
|`NegativeInfinity`|整数でない正の奇数|`Infinity`|
|負の実数|整数でない実数|`NaN`|
|$-1$|`Infinity`または`NegativeInfinity`|`NaN`|
|$-1 < x < 1$|`NegativeInfinity`|`Infinity`|
|$-1 < x < 1$|`Infinity`|$0$|
|$x < -1 \parallel x > 1$|`NegativeInfinity`|$0$|
|$x < -1 \parallel x > 1$|`Infinity`|`Infinity`|
|$0$|$x < 0$|`Infinity`|
|$0$|$x > 0$|`Infinity`|
|`Infinity`|$x < 0$|$0$|
|`Infinity`|$x > 0$|`Infinity`|

† AliceSisterでは`NaN`を返します。

この関数は、内部的にCランタイムを呼び出しています。
正確な結果および有効な値の範囲は、オペレーティングシステムやアーキテクチャによって異なる可能性があります。

### 例
次の例では、この関数を使用して2の0から8乗までの値を求めます。

```cs title="AliceScript"
using Alice.Math;

for(var p = 0; p <= 8; p++;)
{
    print($"2^{p} = {math_pow(2,p)}");
}

// 出力
// 
// 2^0 = 1
// 2^1 = 2
// 2^2 = 4
// 2^3 = 8
// 2^4 = 16
// 2^5 = 32
// 2^6 = 64
// 2^7 = 128
// 2^8 = 256
```

また、次の例では16の4乗根を求めています。

```cs title="AliceScript"
using Alice.Math;

var value = 16;
var result = math_pow(value, 1 / 4);

print(result); //出力 : 2
```

さらに、次の例では2を3乗した数の逆数を求めています。

```cs title="AliceScript"
using Alice.Math;

var value = 2;
var result = math_pow(value, -3);

print(result); //出力 : 0.125
```
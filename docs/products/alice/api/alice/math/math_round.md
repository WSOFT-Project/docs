---
title: math_round
summary: 指定された数値を指定した小数点以下の桁数に丸めます。
mt_type: function
mt_title: math_round(number,number)
mt_summary: 指定された数値を指定した小数点以下の桁数に丸めます。
mt_title: math_round(number,bool?)
mt_summary: 指定した丸め規則を用いて指定された数値を整数に丸めます。
mt_title: math_round(number,number,bool?)
mt_summary: 指定した丸め規則を用いて指定された数値を指定した小数点以下の桁数に丸めます。
---

### 定義
名前空間: Alice.Math<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Math.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Math.cs)

#### math_round(number,number)

指定された数値を指定した小数点以下の桁数に丸めます。
四捨五入時には銀行型丸めを使用します。

```cs title="AliceScript"
namespace Alice.Math;
public number math_round(number value, number digits = 0);
```

|引数| |
|-|-|
|`value`|丸めたい対象の数値|
|`digits`|戻り値の小数部の桁数。既定値は`0`で、`0`以上`15`未満の整数である必要があります|

|戻り値| |
|-|-|
|`number`|小数点以下の桁数が`digits`以下の`value`に近い数値|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

#### math_round(number,bool?)

指定した丸め規則を用いて指定された数値を整数に丸めます。

```cs title="AliceScript"
namespace Alice.Math;
public number math_round(number value, bool? roundingMode = null);
```

|引数| |
|-|-|
|`value`|丸めたい対象の数値|
|`roundingMode`|銀行型丸めを使用する場合は`null`、0からもっとも遠い方向に丸める場合は`true`、0にもっとも近い方向に丸める場合は`false`。|

|戻り値| |
|-|-|
|`number`|`value`に等しい小数部の桁数を格納する`digits`にもっとも近い数値。|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

!!!note "実装に関する注意"
    このオーバーロードはAliceSisterでは仕様が異なります。
    詳しくは**説明**をご覧ください。

#### math_round(number,number,bool?)

指定した丸め規則を用いて指定された数値を指定した小数点以下の桁数に丸めます。

```cs title="AliceScript"
namespace Alice.Math;
public number math_round(number value, number digits = 0, bool? roundingMode = null);
```

|引数| |
|-|-|
|`value`|丸めたい対象の数値|
|`digits`|戻り値の小数部の桁数。既定値は`0`で、`0`以上`15`未満の整数である必要があります|
|`roundingMode`|銀行型丸めを使用する場合は`null`、0からもっとも遠い方向に丸める場合は`true`、0にもっとも近い方向に丸める場合は`false`。|

|戻り値| |
|-|-|
|`number`|`value`に等しい小数部の桁数を格納する`digits`にもっとも近い数値。|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

!!!note "実装に関する注意"
    このオーバーロードはAliceSisterでは仕様が異なります。
    詳しくは**説明**をご覧ください。

### 説明
`digits`の値は`0`から`15`以内でなければなりません。
AliceScriptの[数値型](../../number/index.md)でサポートされる小数点以下の数値は最大15桁です。

`value`の値が[math_NaN](./math_nan.md)の場合、この関数は[math_NaN](./math_nan.md)を返します。また`value`の値が[math_Infinity](./math_infinity.md)の場合、この関数も[math_Infinity](./math_infinity.md)を返し、`value`の値が[math_NegativeInfinity](./math_negativeinfinity.md)の場合、この関数も[math_NegativeInfinity](./math_negativeinfinity.md)を返します。

小数部を切り上げたいときは[math_celling](./math_celling.md)を、切り捨てたいときは[math_floor](./math_floor.md)または[math_truncate](./math_truncate.md)を使用してください。

AliceSisterでは、`roundingMode`が`true`の場合でも銀行型丸めを使用します。
AliceSisterでは0からもっとも遠い方向に丸めることはできません。

### 例
次の例ではさまざまな方法を使って、小数点以下2桁の数値を小数点以下1桁に丸めます。

```cs title="AliceScript"
using Alice.Math;

print(math_round(3.45, 1, null));  //出力 : 3.4
print(math_round(3.45, 1, true));  //出力 : 3.5
print(math_round(3.47, 1, false)); //出力 : 3.5
```
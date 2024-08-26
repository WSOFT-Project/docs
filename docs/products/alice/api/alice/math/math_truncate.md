---
title: math_truncate
summary: 指定した数値の整数部を取得します
mt_type: function
mt_title: math_truncate(number)
---

### 定義
名前空間: Alice.Math<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Math.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Math.cs)

#### math_truncate(number)

指定した数値の整数部を取得します。

```cs title="AliceScript"
namespace Alice.Math;
public number math_truncate(number value);
```

|引数| |
|-|-|
|`value`|切り捨てたい対象の数値|

|戻り値| |
|-|-|
|`number`|`value`の整数部|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

#### math_truncate(number,number)

> [!IMPORTANT] プレビュー
> この記事では、現在開発中のAlice vNEXTに実装される予定のAPIについて説明しています。
> このAPIは予告なく削除および変更される可能性があります。

指定された数の指定された小数点以下を切り捨てた整数を取得します。

```cs title="AliceScript"
namespace Alice.Math;
public number math_truncate(number value, number digits);
```

|引数| |
|-|-|
|`value`|切り捨てる値|
|`digits`|戻り値の小数部の桁数。`0`以上の整数である必要があります。|

|戻り値| |
|-|-|
|`number`|`value`の指定された小数点以下を切り捨てた数。|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

### 説明
この関数は、`value`を0に向かってもっとも近い整数に丸めます。

また、`value`の値が[math_NaN](./math_nan.md)の場合、この関数は[math_NaN](./math_nan.md)を返します。さらに、`value`の値が正負どちらかの無限の場合、この関数は無限を返します。

小数部を切り上げたいときは[math_ceiling](./math_ceiling.md)を、四捨五入したいときは[math_round](./math_round.md)を使用してください。

### 例
次の例では、いくつかの数の小数部を切り捨てています。

```cs title="AliceScript"
using Alice.Math;

print(math_truncate(12.3));  //出力 : 12
print(math_truncate(-12.3)); //出力 : -12
```
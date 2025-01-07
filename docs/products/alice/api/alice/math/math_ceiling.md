---
title: math_ceiling
summary: 指定された数の小数点以下を切り上げた整数を取得します。
mt_type: function
mt_title: math_ceiling(number)
mt_summary: 指定された数の小数点以下を切り上げた整数を取得します。
mt_title: math_ceiling(number,number)
mt_summary: 指定された数の指定された小数点以下を切り上げた整数を取得します。
---

### 定義
名前空間: Alice.Math<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Math.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Math.cs)

#### math_ceiling(number)

指定された数の小数点以下を切り上げた整数を取得します。

```cs title="AliceScript"
namespace Alice.Math;
public number math_ceiling(number value);
```

|引数| |
|-|-|
|`value`|切り上げる値|

|戻り値| |
|-|-|
|`number`|`value`の整数部+1の値|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

#### math_ceiling(number,number)



指定された数の指定された小数点以下を切り上げた整数を取得します。

```cs title="AliceScript"
namespace Alice.Math;
public number math_ceiling(number value, number digits);
```

|引数| |
|-|-|
|`value`|切り上げる値|
|`digits`|戻り値の小数部の桁数。`0`以上の整数である必要があります。|

|戻り値| |
|-|-|
|`number`|`value`の指定された小数点以下を切り上げた数。|

???note "対応: Alice4以降"
    |対応||
    |---|---|
    |AliceScript|4|
    |AliceSister|4|
    |Losetta|0.11|

### 説明
この関数は、指定された数以上の数のうち、最小の整数値を返します。
この関数の行う丸め動作は、IEEE Standard 754 セクション 4 に準拠しています。これは、正の無限大に向かって丸めと呼ばれることもあります。

数値を切り捨てた整数を取得したい場合は[math_floor](./math_floor.md)を、四捨五入したい場合は[math_round](./math_round.md)を使用してください。

### 例
次の例では、`2.3`の小数点以下を切り上げています。

```cs title="AliceScript"
using Alice.Math;

var v = 2.3;
print(math_ceiling(v)); // 出力例 : 3
```
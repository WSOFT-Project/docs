---
title: math_bitDecrement
summary: 指定された数値の次に小さい値を返します。
mt_type: function
mt_title: math_bitDecrement(number)
---

### 定義
名前空間: Alice.Math<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Math.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Math.cs)

#### math_bitDecrement(number)

指定された数値の次に小さい値を返します。

```cs title="AliceScript"
namespace Alice.Math;
public number math_bitDecrement(number value);
```

|引数| |
|-|-|
|`value`|デクリメントする値。|

|戻り値| |
|-|-|
|`number`|`value`の次に小さい値。|

???note "対応: AliceScript RC1以降、AliceScriptとLosettaのみ"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|該当なし|
    |Losetta|0.8、0.9、0.10、0.11|

    この関数はAliceSisterでは実装されていません。

    実装されていない環境では`0x034 NOT_IMPLEMENTED`例外がスローされます。

### 説明
`value`または`-value`が`NegativeInfinity`と等しい場合は`NegativeInfinity`を返します。

ｍた、`value`または`-value`が`NaN`と等しい場合は`NaN`を返します。
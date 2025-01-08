---
title: math_fusedMultiplyAdd
summary: ひとつの三項演算として丸められた、(x*y)+zを返します。
mt_type: function
mt_title: math_fusedMultiplyAdd(number,number,number)
---

### 定義
名前空間: Alice.Math<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Math.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Math.cs)

#### math_fusedMultiplyAdd(number,number,number)

ひとつの三項演算として丸められた、(x*y)+zを返します。

```cs title="AliceScript"
namespace Alice.Math;
public number math_fusedMultiplyAdd(number x,number y,number z);
```

|引数| |
|-|-|
|`x`|`y`と乗算する数値。|
|`y`|`x`と乗算する数値。|
|`z`|`x`に`y`を乗算した結果に加算する数値。|

|戻り値| |
|-|-|
|`number`|ひとつの三項演算として丸められた、(x*y)+z。|

???note "対応: AliceScript RC1以降、AliceScriptとLosettaのみ"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|該当なし|
    |Losetta|0.8、0.9、0.10、0.11|

    この関数はAliceSisterでは実装されていません。

    実装されていない環境では`0x034 NOT_IMPLEMENTED`例外がスローされます。

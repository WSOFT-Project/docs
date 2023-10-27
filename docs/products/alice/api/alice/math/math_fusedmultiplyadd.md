---
title: math_fusedmultiplyadd
summary: ひとつの三項演算として丸められた、(x*y)+zを返します。
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

ひとつの三項演算として丸められた、(x*y)+zを返します。

```cs title="AliceScript"
namespace Alice.Math;
number math_fusedmultiplyadd(number x,number y,number z);
```

|引数| |
|-|-|
|`x`|`y`と乗算する数値。|
|`y`|`x`と乗算する数値。|
|`z`|`x`に`y`を乗算した結果に加算する数値。|

|戻り値| |
|-|-|
|`number`|ひとつの三項演算として丸められた、(x*y)+z。|

!!!warning "実装の非互換性"
    この関数はAliceSisterでは実装されていません。LosettaやAliceScriptを使用することを検討してください。
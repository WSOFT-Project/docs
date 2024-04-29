---
title: math_bitincrement
summary: 指定された数値の次に大きい値を返します。
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

指定された数値の次に大きい値を返します。

```cs title="AliceScript"
namespace Alice.Math;
public number math_bitincrement(number value);
```

|引数| |
|-|-|
|`value`|インクリメントする値。|

|戻り値| |
|-|-|
|`number`|`value`の次に大きい値。|

!!!warning "実装の非互換性"
    この関数はAliceSisterでは実装されていません。LosettaやAliceScriptを使用することを検討してください。

### 説明
`value`または`-value`が`PositiveInfinity`と等しい場合は`PositiveInfinity`を返します。

ｍた、`value`または`-value`が`NaN`と等しい場合は`NaN`を返します。
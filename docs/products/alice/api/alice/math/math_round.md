---
title: math_round
summary: 指定された数値を指定した小数部の桁数に丸めます。
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

指定された数値を指定した小数部の桁数に丸めます。

```cs title="AliceScript"
namespace Alice.Math;
number math_round(number value,number digits=0);
```

|引数| |
|-|-|
|`value`|丸め対象の数値。|
|`digits=0`|戻り値の小数部の桁数。規定値は`0`で、これは小数を含みません。|

|戻り値| |
|-|-|
|`number`|`value`に等しい小数部の桁数を格納する`digits`に最も近い数値。|

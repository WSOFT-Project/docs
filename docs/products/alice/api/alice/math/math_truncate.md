---
title: math_truncate
summary: 指定した数値の整数部を計算します。
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

指定した数値の整数部を計算します。

```cs title="AliceScript"
namespace Alice.Math;
number math_truncate(number value);
```

|引数| |
|-|-|
|`value`|切り捨て対象の数値。|

|戻り値| |
|-|-|
|`number`|`value`の整数部。つまり、小数部の桁を破棄した後に残る数値です。|

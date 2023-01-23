---
title: math_copysign
summary: 指定された絶対値と符号の値を返します。
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

指定された絶対値と符号の値を返します。

```cs title="AliceScript"
namespace Alice.Math;
number math_copysign(number value,number sign);
```

|引数| |
|-|-|
|`value`|結果に絶対値が使用される数値。|
|`sign`|結果に符号が使用される数値。|

|戻り値| |
|-|-|
|`number`|`value`の絶対値と符号`sign`の値。|

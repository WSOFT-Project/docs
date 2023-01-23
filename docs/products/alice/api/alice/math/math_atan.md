---
title: math_atan
summary: タンジェントが指定した数となる角度を返します。
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

タンジェント（正接）が指定した数となる角度を返します。

```cs title="AliceScript"
namespace Alice.Math;
number math_atan(number value);
```

|引数| |
|-|-|
|`value`|タンジェントを表す値。|

|戻り値| |
|-|-|
|`number`|弧度法で$-\pi/2\leqq\theta\leqq\pi/2$の範囲の角度$\theta$|

### 説明
`math_acosh()`関数は、引数として与えられた数値の逆正接（アークタンジェント）をラジアン単位で返します。
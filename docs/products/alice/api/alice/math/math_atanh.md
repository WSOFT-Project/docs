---
title: math_atanh
summary: 逆双曲線正接が指定した数となる角度を返します。
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

逆双曲線正接（ハイパーポリックタンジェント）が指定した数となる角度を返します。

```cs title="AliceScript"
namespace Alice.Math;
number math_atanh(number value);
```

|引数| |
|-|-|
|`value`|タンジェントを表す値。|

|戻り値| |
|-|-|
|`number`|弧度法で$0\leqq\theta\leqq\pi$の範囲の角度$\theta$|

### 説明
`math_acosh()`関数は、引数として与えられた数値の逆正接（アークタンジェント）をラジアン単位で返します。
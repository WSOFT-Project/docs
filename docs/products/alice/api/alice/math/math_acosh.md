---
title: math_acosh
summary: 逆双曲線余弦が指定した数となる角度を返します。
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

逆双曲線余弦（ハイパーポリックコサイン）が指定した数となる角度を返します。

```cs title="AliceScript"
namespace Alice.Math;
number math_acosh(number value);
```

|引数| |
|-|-|
|`value`|逆双曲線余弦を表す値。この値は`1`以上`PositiveInfinity`以下である必要があります。|

|戻り値| |
|-|-|
|`number`|弧度法で$0\leqq\theta\leqq\pi$の範囲の角度$\theta$|

### 説明
`math_acosh()`関数は、引数として与えられた数値の逆双曲線余弦（ハイパーポリックコサイン）をラジアン単位で返します。

取得した弧度法でのラジアンを角度に変換するには、戻り値に`180/math_pi`を乗算します。

逆双曲線余弦について作者はよくわかっていないので、使用例は割愛します。
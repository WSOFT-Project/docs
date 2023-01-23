---
title: math_acos
summary: コサインが指定した数となる角度を返します。
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

コサインが指定した数となる角度を返します。

```cs title="AliceScript"
namespace Alice.Math;
number math_acos(number value);
```

|引数| |
|-|-|
|`value`|コサインを表す値。この値は`-1`以上`1`以下である必要があります。|

|戻り値| |
|-|-|
|`number`|弧度法で$0\leqq\theta\leqq\pi$の範囲の角度$\theta$|

### 説明
`math_acos()`関数は、引数として与えられた数値の逆余弦（アークコサイン）をラジアン単位で返します。

取得した弧度法でのラジアンを角度に変換するには、戻り値に`180/math_pi`を乗算します。

### 例
$cos(0^\circ)$の値は`1`と定義されています。
次の例では、それを確認します。

```cs title="AliceScript"
using Alice.Math;

var v=0;
print(math_acos(v)); // 出力例 : 1
```
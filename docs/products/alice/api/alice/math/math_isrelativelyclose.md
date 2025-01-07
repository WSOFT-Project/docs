---
title: math_isRelativelyClose
summary: 指定した2つの値が互いに相対的に近似しているどうかを表す値を取得します。
date : 2024-05-02

mt_type: function
mt_title: math_isRelativelyClose(number,number,number)
---

### 定義
名前空間: Alice.Math<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Math.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Math.cs)

#### math_isRelativelyClose(number,number,number)



指定した2つの値が互いに相対的に近似しているどうかを表す値を取得します。

```cs title="AliceScript"
namespace Alice.IO;
public bool math_isRelativelyClose(number x, number y, number tolerance = 1E-9) requires(tolerance > 0);
```

|引数| |
|-|-|
|`x`|比較する一方の値|
|`y`|比較するもう一方の値|
|`tolerance`|`x`と`y`のうち絶対値の大きいほうの値に対して許容される最大誤差。既定値は`1E-9`です。この値は0より大きい必要があります。|

|戻り値| |
|-|-|
|`bool`|`x`と`y`が互いに近似している場合は`true`、それ以外の場合は`false`|

???note "対応: Alice4以降"
    |対応||
    |---|---|
    |AliceScript|4|
    |AliceSister|4|
    |Losetta|0.11|

### 説明
この関数は、以下の表に従って`x`と`y`が一定の許容誤差以内で近似しているかを調べます。
`tolerance`は、`x`と`y`の絶対値の大きい方に対する`x`と`y`の最大許容誤差です。
たとえば、最大許容誤差を5%にする場合は`0.05`に設定します。また、`x`と`y`が少なくとも5桁等しいことを確認するには、`1E-5`を指定します。規定では、9桁等しいことを確認します。

条件|結果
---|---
$x=$`NaN`または$y=$`NaN`|等しくない(`false`)
$x=\pm\infty$かつ$y\neq\pm\infty$|等しくない(`false`)
$x\neq\pm\infty$かつ$y=\pm\infty$|等しくない(`false`)
$x=\pm\infty$かつ$y=\pm\infty$|x,yが同符号の場合のみ等しい
$x=y$|等しい(`true`)
$x>y$|$x\times tolerance \geq (x - y)$
$x<y$|$y\times tolerance \geq (y - x)$

ふたつの値の差の絶対値の最大値を決めて近似を判定する場合は、[math_isAbsolutelyClose](./math_isabsolutelyclose.md)を使用してください。

### 例
次の例では、`0.1 + 0.1 + 0.1`の結果が`0.3`とは厳密には異なることを確認し、かつ相対的には近いことを確認しています。

```cs title="AliceScript"
using Alice.Math;

number x = 0.1 + 0.1 + 0.1;
number y = 0.3;
print(x == y);//出力:false

print(math_isRelativelyClose(x, y));//出力:true
```

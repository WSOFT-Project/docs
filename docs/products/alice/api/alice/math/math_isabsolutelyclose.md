---
title: math_isAbsolutelyClose
summary: 指定した2つの値が互いに近似しているどうかを表す値を取得します。
date : 2024-05-02
draft : true
---

!!!info "プレビュー"
    この記事では、現在開発中のAlice vNEXTに実装される予定のAPIについて説明しています。
    このAPIは予告なく削除および変更される可能性があります。

### 定義
名前空間: Alice.Math<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Math.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Math.cs)

#### math_isAbsolutelyClose(number,number,number)

指定した2つの値が互いに近似しているどうかを表す値を取得します。

```cs title="AliceScript"
namespace Alice.IO;
public bool math_isAbsolutelyClose(number x, number y, number tolerance) requires(tolerance > 0);
```

|引数| |
|-|-|
|`x`|比較する一方の値|
|`y`|比較するもう一方の値|
|`tolerance`|`x`と`y`のうち絶対値の大きいほうの値に対して許容される最大誤差。この値は0より大きい必要があります。|

|戻り値| |
|-|-|
|`bool`|`x`と`y`が互いに近似している場合は`true`、それ以外の場合は`false`|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

### 説明
この関数は、以下の表に従って`x`と`y`が一定の許容誤差以内で近似しているかを調べます。
`tolerance`は、`x`と`y`の差の絶対値の最大値です。

条件|結果
---|---
$x=$`NaN`または$y=$`NaN`|等しくない(`false`)
$x=\plusmn\infin$かつ$y\neq\plusmn\infin$|等しくない(`false`)
$x\neq\plusmn\infin$かつ$y=\plusmn\infin$|等しくない(`false`)
$x=\plusmn\infin$かつ$y=\plusmn\infin$|x,yが同符号の場合のみ等しい(`x==y`)
$x=y$|等しい(`true`)
その他の場合|$tolerance \geq [x - y]$

ふたつの値の絶対値の大きい方に対する最大許容誤差を決めて近似を判定するには、[math_isRelativelyClose](./math_isabsolutelyclose.md)を使用してください。

### 例
次の例では、`0.1 + 0.1 + 0.1`の結果が`0.3`とは厳密には異なることを確認し、`1e-9`以上の誤差はないことを確認しています。

```cs title="AliceScript"
using Alice.Math;

number x = 0.1 + 0.1 + 0.1;
number y = 0.3;
print(x == y);//出力:false

print(math_isAbsolutelyClose(x, y, 1e-9));//出力:true
```

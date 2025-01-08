---
title: StdDev
long_title : array.StdDev
summary: 現在の配列内の要素の標準偏差を取得します。
date: 2024-07-18

mt_type: method
mt_title: StdDev(bool)
mt_summary: 現在の配列内の要素の標準偏差を取得します。
mt_title: StdDev(delegate,bool)
mt_summary: 現在の配列内の各要素にある値を用いて、標準偏差を取得します。
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)



#### StdDev(bool)

現在の配列内の要素の標準偏差を取得します。

```cs title="AliceScript"
class Alice.Array;
public number StdDev(bool sample = false);
```

|引数| |
|-|-|
|`sample`|配列を母集団の標本とみなして、不偏標準偏差を取得する場合は`true`、配列を母集団全体とみなして、母標準偏差を取得する場合は`false`。この引数の規定値は`false`です。|

|戻り値| |
|-|-|
|`number`|配列内の各要素の標準偏差|

???note "対応: Alice4以降"
    |対応||
    |---|---|
    |AliceScript|4|
    |AliceSister|4|
    |Losetta|0.11|

#### StdDev(delegate,bool)

現在の配列内の各要素にある値を用いて、標準偏差を取得します。

```cs title="AliceScript"
class Alice.Array;
public number StdDev(delegate source, bool sample = false);
```

|引数| |
|-|-|
|`source`|配列内の各要素を数値に変換する関数|
|`sample`|配列を母集団の標本とみなして、不偏標準偏差を取得する場合は`true`、配列を母集団全体とみなして、母標準偏差を取得する場合は`false`。この引数の規定値は`false`です。|

|戻り値| |
|-|-|
|`number`|配列内の各要素の標準偏差|

???note "対応: Alice4以降"
    |対応||
    |---|---|
    |AliceScript|4|
    |AliceSister|4|
    |Losetta|0.11|

### 説明
この関数は、現在の配列の各要素の標準偏差を取得します。`source`を指定しない場合、配列内の各要素は数値型である必要があります。

この関数は、以下の公式を使用して母標準偏差または不偏標準偏差を計算します。

**母標準偏差**

$$
s = \sqrt{\frac{1}{n}\sum_{i=1}^{n} (x_i - \bar{x})^2}
$$

**不偏標準偏差**

$$
s = \sqrt{\frac{1}{n-1}\sum_{i=1}^{n} (x_i - \bar{x})^2}
$$

不偏標準偏差は母標準偏差とは異なり、標本が母集団の一部を切り取ったものだとみなして、標本に偏りがあることを考慮して計算を行います。通常、データの全てを取得できる場合は母標準偏差を、実験サンプルなどすべてを網羅していないデータを扱う場合は不偏標準偏差を使用します。

`source`は、数値型を返すデリゲートである必要があります。このデリゲートには、順番に配列内の各要素が渡されます。

### 例
以下は、ある数値が入った配列の標準偏差を求めます。

```cs title="AliceScript"
var a = [8, 9, 6, 11, 3, 10, 8, 9];
print(a.StdDev(false)); // 出力例 : 2.5...
```

---
title: math_abs
summary: 数値の絶対値を返します。
---

### 定義
名前空間: Alice.Math<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Math.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Math.cs)

#### math_abs(number)

与えられた数値の絶対値を返します。

```cs title="AliceScript"
namespace Alice.Math;
public number math_abs(number value);
```

|引数| |
|-|-|
|`value`|絶対値を取得する符号付きの数値|

|戻り値| |
|-|-|
|`number`|与えられた数値の絶対値|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 説明
絶対値とは、数値の符号を除いた部分です。たとえば、`-2`の絶対値は`2`です。

`value`が正負どちらかの無限大の場合、この関数は無限大を返します。また、[NaN](./math_isnan.md)の場合は`NaN`を返します。

### 例
次の例では、`-1`の絶対値を取得します。

```cs title="AliceScript"
using Alice.Math;

number k = -1;
print(math_abs(k)); // 出力例 : 1
```
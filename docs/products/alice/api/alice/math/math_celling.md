---
title: math_celling
summary: 指定された数以上の数のうち、最小の整数値を返します。
---

### 定義
名前空間: Alice.Math<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Math.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Math.cs)

#### math_celling(number)

指定された数以上の数のうち、最小の整数値を返します。

```cs title="AliceScript"
namespace Alice.Math;
public number math_celling(number value);
```

|引数| |
|-|-|
|`value`|指定された数以上の数の、指定する数値。|

|戻り値| |
|-|-|
|`number`|指定された数以上のうち、最小の整数値を返します。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
次の例では、`0.1`の正方向に近い整数を取得します。

```cs title="AliceScript"
using Alice.Math;

var v=0.1;
print(math_celling(v)); // 出力例 : 1
```
---
title: math_sqrt
summary: 指定された数値の平方根を返します。
mt_type: function
mt_title: math_sqrt(number)
---

### 定義
名前空間: Alice.Math<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Math.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Math.cs)

#### math_sqrt(number)

指定された数値の平方根を返します。

```cs title="AliceScript"
namespace Alice.Math;
public number math_sqrt(number value);
```

|引数| |
|-|-|
|`value`|平方根を求める対象の数値。|

|戻り値| |
|-|-|
|`number`|`value`の平方根。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
次の例では、$3^2$の値を取得します。

```cs title="AliceScript"
using Alice.Math;

var v=3;
print(math_sqrt(v)); // 出力例 : 9
```
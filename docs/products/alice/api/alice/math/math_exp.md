---
title: math_exp
summary: 指定した値でeを累乗した値を返します。
mt_type: value
---

### 定義
名前空間: Alice.Math<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Math.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Math.cs)

#### math_exp(number)

指定した値で`e`を累乗した値を返します。

```cs title="AliceScript"
namespace Alice.Math;
public number math_exp(number value);
```

|引数| |
|-|-|
|`value`|累乗を指定する数値。|

|戻り値| |
|-|-|
|`number`|`e`を`value`で累乗した値。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

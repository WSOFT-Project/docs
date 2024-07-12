---
title: math_clamp
summary: 指定された範囲内に数値を制約します
mt_type: function
mt_title: math_clamp(number,number,number)
---

### 定義
名前空間: Alice.Math<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Math.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Math.cs)

#### math_clamp(number,number,number)

指定された最大最小値の範囲内に数値を制約します

```cs title="AliceScript"
namespace Alice.Math;
public number math_clamp(number value, number min, number max);
```

|引数| |
|-|-|
|`value`|固定される値。|
|`min`|結果の下限。|
|`max`|結果の上限。|

|戻り値| |
|-|-|
|`number`|`min`≤`value`≤`max`の場合は`value`が、どちらかの範囲に逸脱する場合はその範囲の最大最小値が返されます。|

???note "対応: Alice2.0以降"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0|
    |AliceSister|2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.9、0.10|

### 説明
この関数は、指定された値を範囲内に制限するために使用します。
この関数では、以下の表にしたがって値を返します。

|条件|戻り値|
|---|---|
|`value < min`|`min`|
|`min < value < max`|`value`|
|`max < value`|`max`|

この関数はAliceSister3.0以前には実装されていません。

### 例
以下に、この関数を使用したいくつかの例を示します。

```cs title="AliceScript"
using Alice.Math;

math_clamp(2, 1, 3); //戻り値 : 2

math_clamp(1, 2, 3); //戻り値 : 1
math_clamp(3, 1, 2); //戻り値 : 2
```
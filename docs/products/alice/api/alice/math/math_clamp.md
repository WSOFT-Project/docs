---
title: math_clamp
summary: 指定された範囲内に数値を制約します
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: Alice2.0

属性: 関数

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
---
title: math_clamp
summary: 指定された最大最小値の範囲に固定される値を返します。
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

指定された最大最小値の範囲に固定される値を返します。

```cs title="AliceScript"
namespace Alice.Math;
number math_clamp(number value,number min,number max);
```

|引数| |
|-|-|
|`value`|固定される値。|
|`min`|結果の下限。|
|`max`|結果の上限。|

|戻り値| |
|-|-|
|`number`|`min`≤`value`≤`max`の場合は`value`が、どちらかの範囲に逸脱する場合はその範囲の最大最小値が返されます。|

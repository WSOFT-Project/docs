---
title: math_isNormal
summary: 指定した数値が正規化数であるかを表す値を取得します。
mt_type: function
mt_title: math_isNormal(number)
---

### 定義
名前空間: Alice.Math<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Math.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Math.cs)

#### math_isNormal(number)

指定した数値がゼロでなく、無限大かつ非数でないかを表す値を取得します。

```cs title="AliceScript"
namespace Alice.Math;
public bool math_isNormal(number value);
```

|引数| |
|-|-|
|`value`|判定対象の数値。|

|戻り値| |
|-|-|
|`number`|`value`が正規化数であれば`true`、それ以外の場合は`false`。|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 例
次の例では、いくつかの値について、正規化された値かどうかを確認します。

```cs title="AliceScript"
using Alice.Math;

number val = 15;
number zero = 0;

print(val); //出力 : true
print(zero);//出力 : false
```
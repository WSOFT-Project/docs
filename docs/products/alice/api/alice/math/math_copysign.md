---
title: math_copySign
summary: 指定された絶対値と符号の値を返します。
mt_type: function
mt_title: math_copySign(number,number)
---

### 定義
名前空間: Alice.Math<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Math.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Math.cs)

#### math_copySign(number,number)

指定された絶対値と符号の値を返します。

```cs title="AliceScript"
namespace Alice.Math;
public number math_copySign(number value, number sign);
```

|引数| |
|-|-|
|`value`|結果に絶対値が使用される数値。|
|`sign`|結果に符号が使用される数値。|

|戻り値| |
|-|-|
|`number`|`value`の絶対値と符号`sign`の値。|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0、4|
    |AliceSister|3.0、4|
    |Losetta|0.10、0.11|

### 例
以下に、この関数を使用したいくつかの例を示します。

```cs title="AliceScript"
using Alice.Math;

math_copySign(2, -1);  //戻り値 : -2
math_copySign(-2, 1);  //戻り値 :  2

math_copySign(3, -3);  //戻り値 : -3
math_copySign(-2, -2); //戻り値 : -2
```
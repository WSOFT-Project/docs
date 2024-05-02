---
title: math_sinh
summary: 指定された角度のハイパーポリックサインを返します。
---

### 定義
名前空間: Alice.Math<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Math.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Math.cs)

#### math_sinh(number)

指定された角度のハイパーポリックサインを返します。

```cs title="AliceScript"
namespace Alice.Math;
public number math_sinh(number value);
```

|引数| |
|-|-|
|`value`|弧度法（ラジアン）で表した角度。|

|戻り値| |
|-|-|
|`number`|`value`のハイパーポリックサイン。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

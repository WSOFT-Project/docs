---
title: math_tanh
summary: 指定された角度のハイパーポリックタンジェントを返します。
mt_type: function
mt_title: math_tanh(number)
---

### 定義
名前空間: Alice.Math<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Math.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Math.cs)

#### math_tanh(number)

指定された角度のハイパーポリックタンジェントを返します。

```cs title="AliceScript"
namespace Alice.Math;
public number math_tanh(number value);
```

|引数| |
|-|-|
|`value`|弧度法（ラジアン）で表した角度。|

|戻り値| |
|-|-|
|`number`|`value`のハイパーポリックタンジェント。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

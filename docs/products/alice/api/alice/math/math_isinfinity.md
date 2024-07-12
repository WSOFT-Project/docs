---
title: math_isInfinity
summary: 指定した数値が正負どちらかの無限大であるかを示す値を取得します。
mt_type: function
mt_title: math_isInfinity(number)
---

### 定義
名前空間: Alice.Math<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Math.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Math.cs)

#### math_isInfinity(number)

指定した数値が正負どちらかの無限大であるかを示す値を取得します。

```cs title="AliceScript"
namespace Alice.Math;
public bool math_isInfinity(number value);
```

|引数| |
|-|-|
|`value`|判定対象の数値。|

|戻り値| |
|-|-|
|`number`|`value`が無限大であれば`true`、それ以外の場合は`false`。|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 例
次の例では、`0`以外の数値を`0`で除算することで無限大になることを確認しています。

```cs title="AliceScript"
using Alice.Math;

print("{0} / {1} == {2}",3,0,math_isInfinity(3/0));
```
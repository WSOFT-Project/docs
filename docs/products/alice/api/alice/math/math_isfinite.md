---
title: math_isFinite
summary: 指定した数値が有限であるかを表す値を取得します。
---

### 定義
名前空間: Alice.Math<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Math.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Math.cs)

#### math_isFinite(number)

指定した数値が有限であるかを表す値を取得します。

```cs title="AliceScript"
namespace Alice.Math;
public bool math_isFinite(number value);
```

|引数| |
|-|-|
|`value`|判定対象の数値。|

|戻り値| |
|-|-|
|`number`|`value`が有限の値であれば`true`、それ以外の場合は`false`。|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

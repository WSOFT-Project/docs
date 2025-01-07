---
title: math_isSubNormal
summary: 指定した数値が非正規化数であるかを表す値を取得します。
mt_type: function
mt_title: math_isSubNormal(number)
---

### 定義
名前空間: Alice.Math<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Math.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Math.cs)

#### math_isSubNormal(number)

指定した数値が非正規化数であるかを表す値を取得します。

```cs title="AliceScript"
namespace Alice.Math;
public bool math_isSubNormal(number value);
```

|引数| |
|-|-|
|`value`|判定対象の数値。|

|戻り値| |
|-|-|
|`number`|`value`が非正規化数であれば`true`、それ以外の場合は`false`。|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0、4|
    |AliceSister|3.0、4|
    |Losetta|0.10、0.11|

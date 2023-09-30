---
title: math_isNormal
summary: 指定した数値が正規化数であるかを表す値を取得します。
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript3.0

属性: 関数

指定した数値が正規化数であるかを表す値を取得します。

```cs title="AliceScript"
namespace Alice.Math;
bool math_isNormal(number value);
```

|引数| |
|-|-|
|`value`|判定対象の数値。|

|戻り値| |
|-|-|
|`number`|`value`が正規化数であれば`true`、それ以外の場合は`false`。|

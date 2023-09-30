---
title: math_isInfinity
summary: 指定した数値が正負どちらかの無限大であるかを示す値を取得します。
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript3.0

属性: 関数

指定した数値が正負どちらかの無限大であるかを示す値を取得します。

```cs title="AliceScript"
namespace Alice.Math;
bool math_isInfinity(number value);
```

|引数| |
|-|-|
|`value`|判定対象の数値。|

|戻り値| |
|-|-|
|`number`|`value`が無限大であれば`true`、それ以外の場合は`false`。|

### 例
次の例では、`0`以外の数値を`0`で除算することで無限大になることを確認しています。

```cs title="AliceScript"
using Alice.Math;

print("{0} / {1} == {2}",3,0,math_isInfinity(3/0));
```
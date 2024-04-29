---
title: math_isNegativeInfinity
summary: 指定した数値が負の無限大であるかを示す値を取得します。
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript3.0

属性: 関数

指定した数値が負の無限大であるかを示す値を取得します。

```cs title="AliceScript"
namespace Alice.Math;
public bool math_isNegativeInfinity(number value);
```

|引数| |
|-|-|
|`value`|判定対象の数値。|

|戻り値| |
|-|-|
|`number`|`value`が負の無限大であれば`true`、それ以外の場合は`false`。|

### 例
次の例では、`0`未満の数値を`0`で除算することで負の無限大になることを確認しています。

```cs title="AliceScript"
using Alice.Math;

print("{0} / {1} == {2}",-3,0,math_isNegativeInfinity(3/0));
```
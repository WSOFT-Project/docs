---
title: math_isNaN
summary: 指定した数値が非数(NaN)であるかを表す値を取得します。
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript3.0

属性: 関数

#### math_isNaN(number)

指定した数値が非数(NaN)であるかを表す値を取得します。

```cs title="AliceScript"
namespace Alice.Math;
public bool math_isNaN(number value);
```

|引数| |
|-|-|
|`value`|判定対象の数値。|

|戻り値| |
|-|-|
|`number`|`value`が非数であれば`true`、それ以外の場合は`false`。|

### 説明

数学演算の結果、演算結果が数学において定義されていない場合に、`NaN`を返します。たとえば、以下の例のように$0/0$は`NaN`です。

```cs title="AliceScript"
using Alice.Math;

number result = 0/0;

print(math_isNan(result));
```
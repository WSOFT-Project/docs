---
title: math_isprime
summary: 指定した数値が素数であるかを表す値を取得します。
---

### 定義
名前空間:Alice.Math / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

指定した数値が素数であるかを表す値を取得します。

```cs title="AliceScript"
namespace Alice.Math;
bool math_isprime(number value);
```

|引数| |
|-|-|
|`value`|判定対象の数値。|

|戻り値| |
|-|-|
|`number`|`value`が素数であれば`true`、それ以外の場合は`false`。|

### 例
次の例では、一桁の自然数のうち、素数のものを表示しています。

```cs title="AliceScript"
using Alice.Math;

for(number n = 0;n < 10; n++)
{
    if(math_isPrime(n))
    {
        print(n);
    }
}
```
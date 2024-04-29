---
title: random_bytes
summary: 暗号学的に安全な方法で、ランダムなバイト配列を返します。
date : 2021-08-10
---
### 定義
名前空間:Alice.Random / アセンブリ : Losetta.Runtime.dll / サポート: Alice2.0

属性: 関数

#### random_bytes(number)

暗号学的に安全な方法で、指定した長さのランダムなバイト配列を返します。

```cs title="AliceScript"
namespace Alice.Random;
public bytes random_bytes(number length);
```

|引数| |
|-|-|
|`length`|生成されるバイト列の長さ。この値は`0`以上である必要があります。|

|戻り値| |
|-|-|
|`bytes`|乱数が格納される配列。|


### 説明
乱数を生成するには、この関数を使用することをオススメします。

この関数が生成する値は、安全性が求められる箇所（たとえば、暗号化キーのような、長期間使うシークレット）に適しています。しかし、[rand_bytes](./rand_bytes.md)と比較すると低速です。

### 例
次の例では、ランダムな配列を取得しています。

```cs title="AliceScript"
using Alice.Random;

var rnd = random_bytes(4);
print(rnd.Length);//出力例:4
```
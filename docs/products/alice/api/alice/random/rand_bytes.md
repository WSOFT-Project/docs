---
title: rand_bytes
summary: ランダムなバイト配列を返します。
date : 2023-08-10
---
### 定義
名前空間:Alice.Random / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

指定した長さのランダムなバイト配列を返します。

```cs title="AliceScript"
namespace Alice.Random;
bytes rand_bytes(number length);
```
|引数| |
|-|-|
|`length`|生成されるバイト列の長さ。この値は`0`以上である必要があります。|

|戻り値| |
|-|-|
|`bytes`|乱数が格納される配列。|


### 説明
この関数が生成する値は、暗号学的には安全ではありません。そのため、これを暗号や、推測できないことが期待される値として使うことはできません。

暗号学的に安全な乱数が必要な場合は、[random_int](./random_int.md)か[random_bytes](./random_bytes.md)関数が、便利で安全です。しかし、それらの方法はこの関数を使用した方法と比較すると非常に低速になります。

### 例
次の例では、ランダムな配列を取得しています。

```cs title="AliceScript"
using Alice.Random;

var rnd = rand_bytes(4);
print(rnd.Length);//出力例:4
```
---
title: random_bytes
summary: 暗号学的に安全な方法で、ランダムなバイト配列を返します。
date : 2021-08-10
mt_type: function
mt_title: random_bytes(number)
---

### 定義
名前空間: Alice.Random<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Random.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Random.cs)

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

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

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
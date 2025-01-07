---
title: rand_double
summary: 0.0以上1.0未満のランダムな浮動小数点数を取得します。
date : 2021-08-10
mt_type: function
mt_title: rand_double()
---

### 定義
名前空間: Alice.Random<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Random.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Random.cs)

#### rand_double()

`0.0`以上`1.0`未満のランダムな浮動小数点数を取得します。

```cs title="AliceScript"
namespace Alice.Random;
public number rand_double();
```

|戻り値| |
|-|-|
|`number`|`0.0`以上`1.0`未満の倍精度浮動小数点数。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 説明
この関数が生成する値は、暗号学的には安全ではありません。そのため、これを暗号や、推測できないことが期待される値として使うことはできません。

暗号学的に安全な乱数が必要な場合は、[random_int](./random_int.md)か[random_bytes](./random_bytes.md)関数が、便利で安全です。しかし、それらの方法はこの関数を使用した方法と比較すると非常に低速になります。

### 例
次の例では、ランダムな小数点付きの数値を表示しています。

```cs title="AliceScript"
using Alice.Random;

print(rand()+rand_double());
```
---
title: rand
summary: ランダムな整数を返します。
date : 2021-08-10
mt_type: function
mt_title: rand()
mt_summary: 0以上のランダムな整数を返します。
mt_title: rand(number)
mt_summary: 指定された最大値より大きい0以上のランダムな整数を返します。
mt_title: rand(number,number)
mt_summary: 指定された範囲内のランダムな整数を返します。
---

### 定義
名前空間: Alice.Random<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Random.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Random.cs)

#### rand()

`0`以上のランダムな整数を返します。

```cs title="AliceScript"
namespace Alice.Random;
public number rand();
```

|戻り値| |
|-|-|
|`number`|`0`以上`2147483647`未満の整数。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

#### rand(number)

指定された最大値より大きい`0`以上のランダムな整数を返します。

```cs title="AliceScript"
namespace Alice.Random;
public number rand(number max);
```

|引数| |
|-|-|
|`max`|生成される乱数の上限。この値は`0`以上にする必要があります。|

|戻り値| |
|-|-|
|`number`|`0`以上`max`未満の整数。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

#### rand(number,number)

指定された範囲内のランダムな整数を返します。

```cs title="AliceScript"
namespace Alice.Random;
number rand(number min,number max);
```

|引数| |
|-|-|
|`min`|生成される乱数の下限。|
|`max`|生成される乱数の上限。この値は`min`以上にする必要があります。|

|戻り値| |
|-|-|
|`number`|`min`以上`max`未満の整数。つまり、戻り値の範囲に`min`は含まれますが`max`は含まれません。`min`が`max`と等しい場合は、`min`が返されます。|

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
次の例では、乱数を生成し表示しています。

```cs title="AliceScript"
using Alice.Random;

number r = rand();
print(r);
```

次の例では、`30`以下の乱数を生成し表示しています。

```cs title="AliceScript"
using Alice.Random;

number r = rand(30);
print(r);
```

次の例では、`10`以上`30`以下の乱数を生成し表示しています。

```cs title="AliceScript"
using Alice.Random;

number r = rand(10,30);
print(r);
```
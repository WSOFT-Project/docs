---
title: random_int
summary: 暗号学的に安全な方法で、ランダムな整数を取得します。
date : 2023-08-10
mt_type: function
mt_title: random_int()
mt_summary: 暗号学的に安全な方法で、ランダムな整数を取得します。
mt_title: random_int(number)
mt_summary: 暗号学的に安全な方法で、指定された最大値より大きいランダムな整数を返します。
mt_title: random_int(number,number)
mt_summary: 暗号学的に安全な方法で、指定された範囲内のランダムな整数を返します。
---

### 定義
名前空間: Alice.Random<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Random.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Random.cs)

#### random_int()

暗号学的に安全な方法で、ランダムな整数を取得します。

```cs title="AliceScript"
namespace Alice.Random;
public number random_int();
```

|戻り値| |
|-|-|
|`number`|`-2147483648`以上`2147483647`未満の整数。|

???note "対応: Alice2.0以降"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.9、0.10、0.11|

#### random_int(number)

暗号学的に安全な方法で、指定された最大値より大きい`-2147483648`以上のランダムな整数を返します。

```cs title="AliceScript"
namespace Alice.Random;
number random_int(number max);
```

|引数| |
|-|-|
|`max`|生成される乱数の上限。この値は`-2147483648`以上にする必要があります。|

|戻り値| |
|-|-|
|`number`|`-2147483648`以上`max`未満の整数。|

???note "対応: Alice2.0以降、AliceScriptとLosettaのみ"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|該当なし|
    |Losetta|0.9、0.10、0.11|

    この関数はAliceSisterでは実装されていません。

    実装されていない環境では`0x034 NOT_IMPLEMENTED`例外がスローされます。

#### random_int(number,number)

暗号学的に安全な方法で、指定された範囲内のランダムな整数を返します。

```cs title="AliceScript"
namespace Alice.Random;
number random_int(number min, number max);
```

|引数| |
|-|-|
|`min`|生成される乱数の下限。|
|`max`|生成される乱数の上限。この値は`min`以上にする必要があります。|

|戻り値| |
|-|-|
|`number`|`min`以上`max`未満の整数。つまり、戻り値の範囲に`min`は含まれますが`max`は含まれません。`min`が`max`と等しい場合は、`min`が返されます。|

???note "対応: Alice2.0以降、AliceScriptとLosettaのみ"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|該当なし|
    |Losetta|0.9、0.10、0.11|

    この関数はAliceSisterでは実装されていません。

    実装されていない環境では`0x034 NOT_IMPLEMENTED`例外がスローされます。

### 説明
乱数を生成するには、この関数を使用することをオススメします。

この関数が生成する値は、安全性が求められる箇所（たとえば、暗号化キーのような、長期間使うシークレット）に適しています。しかし、[rand](./rand.md)と比較すると低速です。

### 例
次の例では、暗号学的に安全な乱数を表示しています。

```cs title="AliceScript"
using Alice.Random;

print(random_int());
```
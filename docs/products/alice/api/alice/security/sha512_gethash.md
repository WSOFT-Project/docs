---
title: sha512_getHash
summary: 指定したデータのSHA512ハッシュ値を取得します。
mt_type: function
mt_title: sha512_getHash(bytes)
---

### 定義
名前空間: Alice.Security<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Security.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Security.cs)

#### sha512_getHash(bytes)

指定したデータのSHA512ハッシュ値を取得します。

```cs title="AliceScript"
namespace Alice.Security;
public bytes sha512_getHash(bytes data);
```

|引数| |
|-|-|
|`data`|計算対象のデータ|

|戻り値| |
|-|-|
|`bytes`|`data`をハッシュ関数で計算した値|

???note "対応: Alice2.1以降"
    |対応||
    |---|---|
    |AliceScript|2.1、2.2、2.3、3.0|
    |AliceSister|2.1、2.2、2.3、3.0|
    |Losetta|0.9、0.10|

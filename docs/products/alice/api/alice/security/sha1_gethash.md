---
title: sha1_getHash
summary: 指定したデータのSHA1ハッシュ値を取得します。
mt_type: function
mt_title: sha1_getHash(bytes)
---

### 定義
名前空間: Alice.Security<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Security.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Security.cs)

#### sha1_getHash(bytes)

指定したデータのSHA1ハッシュ値を取得します。

```cs title="AliceScript"
namespace Alice.Security;
public bytes sha1_getHash(bytes data);
```

|引数| |
|-|-|
|`data`|計算対象のデータ|

|戻り値| |
|-|-|
|`bytes`|`data`をハッシュ関数で計算した値|

???note "対応: Alice2.2以降"
    |対応||
    |---|---|
    |AliceScript|2.2、2.3、3.0、4|
    |AliceSister|2.2、2.3、3.0、4|
    |Losetta|0.9、0.10、0.11|

!!!warning "脆弱なハッシュ関数"
    MD5やSHA1などのハッシュ関数は、最新のハッシュ関数ほど耐衝突性が低くなります。安全性が必要な場合はより安全な、SHA-512、SHA256などのハッシュ関数を使用してください。
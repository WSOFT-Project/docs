---
title: md5_GetHash
summary: 指定したデータのMD5ハッシュ値を取得します。
---

### 定義
名前空間:Alice.Security / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript3.0

属性: 関数

指定したデータのMD5ハッシュ値を取得します。

```cs title="AliceScript"
namespace Alice.Security;
public bytes md5_GetHash(bytes data);
```

|引数| |
|-|-|
|`data`|計算対象のデータ|

|戻り値| |
|-|-|
|`bytes`|`data`をハッシュ関数で計算した値|

!!!warning "脆弱なハッシュ関数"
    MD5やSHA1などのハッシュ関数は、最新のハッシュ関数ほど耐衝突性が低くなります。安全性が必要な場合はより安全な、SHA-512、SHA256などのハッシュ関数を使用してください。
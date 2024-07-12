---
title: password_verify
summary: 指定された文字列が正しいかどうかをハッシュ値と照合し検証します。
mt_type: function
mt_title: password_verify(string,bytes,bytes,number,number)
---

### 定義
名前空間: Alice.Security<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Security.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Security.cs)

#### password_verify(string,bytes,bytes,number,number)

指定された文字列が正しいかどうかをハッシュ値と照合し検証します。

```cs title="AliceScript"
namespace Alice.Net;
public bool password_verify(string password, bytes hash, bytes salt, number hash_size = 32, number stretch_count = 1000);
```

|引数| |
|-|-|
|`password`| 検証する文字列|
|`hash`|検証に使用するハッシュ値|
|`salt`| 上記のハッシュ値のソルト|
|`hash_size`|出力されるハッシュ値の長さ。規定では32。|
|`stretch_count`|ストレッチングをする回数。規定では1000。|

|戻り値| |
|-|-|
|`bool`|パスワードが正しければ`true`、それ以外の場合は`false`。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
次の例では、文字列をハッシュ化し検証します。

```cs title="AliceScript"
using Alice.Security;
using Alice.IO;

byte[] salt = password_getSalt();
byte[] hash = password_hash("password",salt);

return password_verify("password",hash,salt);
```
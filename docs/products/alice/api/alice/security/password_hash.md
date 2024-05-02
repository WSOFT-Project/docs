---
title: password_hash
summary: 指定した文字列に対応するハッシュ値を計算します
---

### 定義
名前空間: Alice.Security<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Security.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Security.cs)

#### password_hash(string,bytes,number,number)

指定した文字列に対応するハッシュ値を計算します

```cs title="AliceScript"
namespace Alice.Security;
public bytes password_hash(string password, bytes salt, number hash_size = 32, number stretch_count = 1000);
```

|引数| |
|-|-|
|`password`| ハッシュ化する文字列|
|`salt`| ハッシュ化に使用するソルト|
|`hash_size`|出力されるハッシュ値の長さ。規定では32。|
|`stretch_count`|ストレッチングをする回数。規定では1000。|

|戻り値| |
|-|-|
|`bytes`|ハッシュ化されたデータ|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
次の例では、文字列をハッシュ化し保存します。

```cs title="AliceScript"
using Alice.Security;
using Alice.IO;

byte[] salt = password_getSalt();
byte[] hash = password_hash("password",salt);

file_write_data("password_getSalt.bin",salt);
file_write_data("password_hash.bin",hash);
```

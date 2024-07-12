---
title: password_hashData
summary: 指定したデータに対応するハッシュ値を計算します
mt_type: function
mt_title: password_hashData(bytes,bytes,number,number)
---

### 定義
名前空間: Alice.Security<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Security.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Security.cs)

#### password_hashData(bytes,bytes,number,number)

指定したデータに対応するハッシュ値を計算します

```cs title="AliceScript"
namespace Alice.Security;
public bytes password_hashData(bytes password, bytes salt, number hash_size=32, number stretch_count=1000);
```

|引数| |
|-|-|
|`password`| ハッシュ化するデータ|
|`salt`| ハッシュ化に使用するソルト|
|`hash_size`|出力されるハッシュ値の長さ。規定では32。|
|`stretch_count`|ストレッチングをする回数。規定では1000。|

|戻り値| |
|-|-|
|`bytes`|ハッシュ化されたデータ|

???note "対応: Alice2.0以降"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0|
    |AliceSister|2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.9、0.10|

### 例
次の例では、ソルトをハッシュ化し保存します。

```cs title="AliceScript"
using Alice.Security;
using Alice.IO;

var salt = password_getSalt();
var hash = password_hash_data(salt,salt);

file_write_data("password_getSalt.bin",salt);
file_write_data("password_hash.bin",hash);
```

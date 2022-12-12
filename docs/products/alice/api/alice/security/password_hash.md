---
title: password_hash
summary: 指定した文字列と対になるハッシュ値を計算します
---
### 定義
名前空間:Alice.Security / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

指定した文字列と対になるハッシュ値を計算します

```cs title="AliceScript"
namespace Alice.Net;
byte[] password_hash(string password,byte[] salt,int hash_size=32,int stretch_count=1000);
```

|引数| |
|-|-|
|`password`| ハッシュ化する文字列|
|`salt`| ハッシュ化に使用するソルト|
|`hash_size`|出力されるハッシュ値の長さ。規定では32。|
|`stretch_count`|ストレッチングをする回数。規定では1000。|

|戻り値| |
|-|-|
|`byte[]`|ハッシュ化されたデータ|

### 例
次の例では、文字列をハッシュ化し保存します。

```cs title="AliceScript"
using Alice.Security;
using Alice.IO;

byte[] salt = password_salt();
byte[] hash = password_hash("password",salt);

file_write_data("password_salt.bin",salt);
file_write_data("password_hash.bin",hash);
```
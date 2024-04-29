---
title: password_hashData
summary: 指定したデータに対応するハッシュ値を計算します
---
### 定義
名前空間:Alice.Security / アセンブリ : Losetta.Runtime.dll / サポート: Alice2.0

属性: 関数

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

---
title: password_verify
summary: 指定された文字列が正しいかどうかをハッシュ値と照合し検証します。
---
### 定義
名前空間:Alice.Security / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

指定された文字列が正しいかどうかをハッシュ値と照合し検証します。

```cs title="AliceScript"
namespace Alice.Net;
byte[] password_verify(string password,byte[] hash,byte[] salt,int hash_size=32,int stretch_count=1000);
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

### 例
次の例では、文字列をハッシュ化し検証します。

```cs title="AliceScript"
using Alice.Security;
using Alice.IO;

byte[] salt = password_getSalt();
byte[] hash = password_hash("password",salt);

return password_verify("password",hash,salt);
```
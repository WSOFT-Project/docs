---
title: password_getSalt
summary: ハッシュ関数のソルトとして使用できる、安全な乱数データを取得します
---
### 定義
名前空間:Alice.Security / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

#### password_getSalt(number)

ハッシュ関数のソルトとして使用できる、安全な乱数データを取得します

```cs title="AliceScript"
namespace Alice.Net;
public bytes password_getSalt(number size = 32);
```

|引数| |
|-|-|
|`size`|出力されるソルトの長さ。|

|戻り値| |
|-|-|
|`bytes`|生成されたソルト。このとき、`return.length=size`となります。|

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
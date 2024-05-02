---
title: password_getSalt
summary: ハッシュ関数のソルトとして使用できる、安全な乱数データを取得します
---

### 定義
名前空間: Alice.Security<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Security.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Security.cs)

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
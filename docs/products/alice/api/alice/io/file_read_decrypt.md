---
title: file_write_encrypt
summary: 指定した暗号化されたファイルを読み取り、ファイルの内容を返します。
date : 2023-12-16
---
### 定義
名前空間:Alice.IO / アセンブリ : Losetta.Runtime.dll / サポート: Alice3.0

属性: 関数

指定したファイルをAES-CBC方式で復号化しながら読み取り、読み取った結果のファイルの内容を返します。

```cs title="AliceScript"
namespace Alice.IO;
public void file_write_encrypt(string path, bool fromPackage, string password, number keySize = 128, number iterations = 1024, bool useSHA512 = false);
```

|引数| |
|-|-|
|`path`|読み込むファイルのパス|
|`fromPackage`|ファイルを現在のパッケージから読み取る場合は`true`、ファイルシステムから読み取る場合は`false`|
|`password`|復号に使用するパスワード|
|`keySize`|復号化に使用する鍵長。この値は`128`、`192`、`256`のいずれかである必要があります。規定値は`128`です。|
|`iterations`|ハッシュ値の計算のストレッチ回数。この値が大きいほど安全性が向上し、パフォーマンスが低下します。規定値は`1024`です。|
|`useSHA512`|ハッシュ値の計算に`SHA512`方式を使用する場合は`true`、`SHA256`方式を使用する場合は`false`。規定値は`false`です。|

### 説明

`source`や`destination`には、相対パスと絶対パスのどちらを指定することもできます。
相対パスを指定した場合、カレントディレクトリからの相対パスとして解釈します。

この関数は、ファイルを開き、ファイル内のデータをすべて読み取った後ファイルを閉じて結果を返します。

この関数は、指定したファイルをAES-CBC方式で復号化しながら読み取り、読み取った結果のファイルの内容を返します。
復号化には、AES-CBC方式を使用します。この方式では、初期化ベクトルを使用して同じ入力に対して毎回異なる結果を返します。また、この関数ではブロック暗号のパディングとして、PKCS7方式を使用します。

`keySize`には、暗号化時に使用されていた鍵長を指定します。たとえば、`256`を指定した場合は、`AES-256-CBC`方式で暗号化してことになります。
また、`useSHA512`を`true`にするとハッシュ値の計算に`SHA512`を使用します。`true`を指定した場合は、`AES-256-SHA-512`方式で暗号化したことに、`false`を指定した場合は`AES-256-SHA-256`のように表現できます。

これらの引数は、通常[file_write_encrypt](./file_write_encrypt.md)で使用したものを使用します。

### 例
次の例では、入力したファイルをAES-256-SHA512方式で復号化しコピーを作成する関数を作成し、`test1.txt`の復号化されたコピーを`test2.txt`に作成します。

```cs title="AliceScript"
using Alice.IO;

void decrypt_AES256(string source, string destination, string password)
{
    var content = file_read_data(source,false,password,256,2048,true);
    file_write_data(destination,content);
}

decrypt_AES256("test1.txt","test2.txt","password");
```

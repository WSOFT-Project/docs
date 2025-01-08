---
title: file_write_encrypt
summary: 指定したファイルに、指定されたデータを暗号化しながら書き込みます。
date : 2023-12-16
mt_type: function
mt_title: file_write_encrypt(string,bytes,string,number,number,bool)
mt_summary: 新しいファイルを作成し、指定されたデータをAES-CBC方式で暗号化しながら書き込みます。
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### file_write_encrypt(string,bytes,string,number,number,bool)

新しいファイルを作成し、指定されたデータをAES-CBC方式で暗号化しながら書き込みます。
ファイルがすでに存在する場合は先頭から上書きします。

```cs title="AliceScript"
namespace Alice.IO;
public void file_write_encrypt(string path, bytes content, string password, number keySize = 128, number iterations = 1024, bool useSHA512 = false);
```

|引数| |
|-|-|
|`path`|書き込むファイルへのパス|
|`content`|ファイルに書き込む内容|
|`password`|暗号化に使用するパスワード|
|`keySize`|暗号化に使用する鍵長。この値は`128`、`192`、`256`のいずれかである必要があります。既定値は`128`です。|
|`iterations`|ハッシュ値の計算のストレッチ回数。この値が大きいほど安全性が向上し、パフォーマンスが低下します。既定値は`1024`です。|
|`useSHA512`|ハッシュ値の計算に`SHA512`方式を使用する場合は`true`、`SHA256`方式を使用する場合は`false`。既定値は`false`です。|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0、4|
    |AliceSister|3.0、4|
    |Losetta|0.10、0.11|

!!!note "実装に関する注意"
    この関数はAliceSisterでは仕様が異なります。
    詳しくは**説明**をご覧ください。

### 説明

`path`には、相対パスと絶対パスのどちらでも指定できます。
相対パスを指定した場合、カレントディレクトリからの相対パスとして解釈します。
パスの大文字と小文字の区別は、環境およびファイルシステムに依存します。たとえば、NTFSでは大文字と小文字は区別されませんが、LFSでは大文字と小文字が区別されます。

この関数は、`path`が存在しない場合新しいファイルを作成し、存在する場合はそれを上書きします。

この関数では、対象ファイルが存在しない場合はファイルを作成しますが、新しいディレクトリは作成しません。したがって、`path`には少なくとも有効なディレクトリまでのパスが含まれる必要があります。

この関数は、指定されたデータを暗号化しながら、指定されたパスのファイルに書き込みます。
暗号化には、AES-CBC方式を使用します。この方式では、初期化ベクトルを使用して同じ入力に対して毎回異なる結果を返します。また、この関数ではブロック暗号のパディングとして、ISO10126方式を使用します。

`keySize`には、暗号化に使用する鍵長を指定します。たとえば、`256`を指定した場合は、`AES-256-CBC`方式で暗号化してことになります。
また、`useSHA512`を`true`にするとハッシュ値の計算に`SHA512`を使用します。`true`を指定した場合は、`AES-256-SHA-512`方式で暗号化したことに、`false`を指定した場合は`AES-256-SHA-256`のように表現できます。

この関数で暗号化したファイルは、[file_read_decrypt](./file_read_decrypt.md)で復号できます。

AliceSisterでは、`useSHA512`が`true`のとき、`0x034 NOT_IMPLEMENTED`例外がスローされ、`useSHA512`が`false`のとき`SHA1`アルゴリズムを使用します。
このため、AliceSisterとその他の実装の間で、この関数の出力するバイナリの互換性はありません。
### 例
次の例では、入力したファイルをAES-256-SHA512方式で暗号化しコピーを作成する関数を作成し、`test.txt`の暗号化されたコピーを`test1.txt`に作成します。

```cs title="AliceScript"
using Alice.IO;

void encrypt_AES256(string source, string destination, string password)
{
    var content = file_read_data(source);
    file_write_encrypt(destination,content,password,256,2048,true);
}

encrypt_AES256("test.txt","test1.txt","password");
```

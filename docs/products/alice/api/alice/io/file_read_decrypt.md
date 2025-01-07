---
title: file_read_decrypt
summary: 指定した暗号化されたファイルを読み取り、ファイルの内容を返します。
date : 2023-12-16
mt_type: function
mt_title: file_read_decrypt(string,bool,string,number,number,bool)
mt_summary: 指定したファイルをAES-CBC方式で復号しながら読み取り、読み取った結果のファイルの内容を返します。
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### file_read_decrypt(string,bool,string,number,number,bool)

指定したファイルをAES-CBC方式で復号しながら読み取り、読み取った結果のファイルの内容を返します。

```cs title="AliceScript"
namespace Alice.IO;
public void file_read_decrypt(string path, bool fromPackage, string password, number keySize = 128, number iterations = 1024, bool useSHA512 = false);
```

|引数| |
|-|-|
|`path`|読み込むファイルのパス|
|`fromPackage`|ファイルを現在のパッケージから読み取る場合は`true`、ファイルシステムから読み取る場合は`false`|
|`password`|復号に使用するパスワード|
|`keySize`|復号に使用する鍵長。この値は`128`、`192`、`256`のいずれかである必要があります。既定値は`128`です。|
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

`source`や`destination`には、相対パスと絶対パスのどちらを指定することもできます。
相対パスを指定した場合、カレントディレクトリからの相対パスとして解釈します。
パスの大文字と小文字の区別は、環境およびファイルシステムに依存します。たとえば、NTFSでは大文字と小文字は区別されませんが、LFSでは大文字と小文字が区別されます。

この関数は、ファイルを開き、ファイル内のデータをすべて読み取った後ファイルを閉じて結果を返します。

この関数は、指定したファイルをAES-CBC方式で復号しながら読み取り、読み取った結果のファイルの内容を返します。
復号には、AES-CBC方式を使用します。この方式では、初期化ベクトルを使用して同じ入力に対して毎回異なる結果を返します。また、この関数ではブロック暗号のパディングとして、ISO10126方式を使用します。

`keySize`には、暗号化時に使用されていた鍵長を指定します。たとえば、`256`を指定した場合は、`AES-256-CBC`方式で暗号化してことになります。
また、`useSHA512`を`true`にするとハッシュ値の計算に`SHA512`を使用します。`true`を指定した場合は、`AES-256-SHA-512`方式で暗号化したことに、`false`を指定した場合は`AES-256-SHA-256`のように表現できます。

この関数は、通常[file_write_encrypt](./file_write_encrypt.md)で暗号化したファイルを復号するのに使用します。

AliceSisterでは、`useSHA512`が`true`のとき、`0x034 NOT_IMPLEMENTED`例外がスローされ、`useSHA512`が`false`のとき`SHA1`アルゴリズムを使用します。
このため、AliceSisterとその他の実装の間で、この関数の出力するバイナリの互換性はありません。
### 例
次の例では、入力したファイルをAES-256-SHA512方式で復号しコピーを作成する関数を作成し、`test1.txt`の復号されたコピーを`test2.txt`に作成します。

```cs title="AliceScript"
using Alice.IO;

void decrypt_AES256(string source, string destination, string password)
{
    var content = file_read_data(source,false,password,256,2048,true);
    file_write_data(destination,content);
}

decrypt_AES256("test1.txt","test2.txt","password");
```

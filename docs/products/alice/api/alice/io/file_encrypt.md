---
title: file_encrypt
summary: 指定したファイルの暗号化されたコピーを別の場所に作成します。
date : 2021-07-28
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

!!!danger "注意事項"
    この関数は、時代遅れで安全ではないアルゴリズムを使用しています。
    この関数は互換性維持のために残されていますが、[file_write_encrypt](./file_write_encrypt.md)を使用することを強く推奨します。

!!!warning "パスワードの保存場所"
    パスワードをスクリプト上に直接記述しないでください。
    AlicePackageでも、攻撃者が簡単にソースコードを読むことができるため危険です。

#### file_encrypt(string,string,string)

指定したファイルのAES-128-CBC-SHA-1暗号化されたコピーを別の場所に作成します。
`destination`にファイルがすでに存在する場合は先頭から上書きします。

```cs title="AliceScript"
namespace Alice.IO;
public void file_encrypt(string source, string destination, string password);
```

|引数| |
|-|-|
|`source`|コピー元のファイルへのパス|
|`destination`|コピー先のファイルへのパス|
|`password`|暗号化に使用するパスワード|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 説明
`source`や`destination`には、相対パスと絶対パスのどちらを指定することもできます。
相対パスを指定した場合、カレントディレクトリからの相対パスとして解釈します。
パスの大文字と小文字の区別は、環境およびファイルシステムに依存します。たとえば、NTFSでは大文字と小文字は区別されませんが、LFSでは大文字と小文字が区別されます。

コピー元のファイルの属性は、コピー先には引き継がれません。

この関数を使用して暗号化したファイルは、[file_decrypt](./file_decrypt.md)を使って復号できます。

この関数は、指定されたファイルをAES-128-CBCを使って暗号化します。
この暗号化方式のブロックサイズは128ビット(16バイト)、鍵長は128ビット、パディングはPKCS7方式で実施されます。

また、この関数はパスワードからハッシュ値、ソルトを求めるためにSHA-1アルゴリズムを使用し、これは現在では弱いハッシュアルゴリズムとされています。さらに、この関数ではストレッチ回数が非常に少ないです。そのため、この関数を用いて暗号化したファイルはあまり安全ではありません。
特別な理由がある場合を除いて、[file_write_encrypt](./file_write_data.md)を使用してください。
### 例
次の例では、`test1.txt`の暗号化されたコピーを`test2.txt`にコピーします。

```cs title="AliceScript"
using Alice.IO;

file_encrypt("test1.txt","test2.txt","password");
```
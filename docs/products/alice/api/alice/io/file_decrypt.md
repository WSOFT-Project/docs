---
title: file_decrypt
summary: 指定したファイルを復号化されたコピーを別の場所に作成します。
date : 2021-07-28
---
### 定義
名前空間:Alice.IO / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

!!!danger "注意事項"
    この関数は、時代遅れで安全ではないアルゴリズムを使用しています。
    この関数は互換性維持のために残されていますが、[file_read_decrypt](./file_read_decrypt.md)を使用することを強く推奨します。

指定した暗号化されたファイルをAES-128-CBC-SHA-1復号化されたコピーを別の場所に作成します。
`destination`にファイルがすでに存在する場合は先頭から上書きします。

```cs title="AliceScript"
namespace Alice.IO;
public void file_decrypt(string source, string destination, string password);
```

|引数| |
|-|-|
|`source`|コピー元のファイルへのパス|
|`destination`|コピー先のファイルへのパス|
|`password`|復号化に使用するパスワード|

### 説明
`source`や`destination`には、相対パスと絶対パスのどちらを指定することもできます。
相対パスを指定した場合、カレントディレクトリからの相対パスとして解釈します。
パスの大文字と小文字の区別は、環境およびファイルシステムに依存します。たとえば、NTFSでは大文字と小文字は区別されませんが、LFSでは大文字と小文字が区別されます。

コピー元のファイルの属性は、コピー先には引き継がれません。

[file_encrypt](./file_encrypt.md)を使って暗号化したファイルは、この関数を使って復号できます。
### 例
次の例では、`test2.txt`の復号化されたコピーを`test3.txt`にコピーします。

```cs title="AliceScript"
using Alice.IO;

file_decrypt("test1.txt","test2.txt","password");
```
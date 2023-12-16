---
title: file_encrypt
summary: 指定したファイルの暗号化されたコピーを別の場所に作成します。
date : 2021-07-28
---
### 定義
名前空間:Alice.IO / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

!!!danger "注意事項"
    この関数は、時代遅れで安全ではないアルゴリズムを使用しています。
    この関数は互換性維持のために残されていますが、[file_write_encrypt](./file_write_encrypt.md)を使用することを強く推奨します。

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

### 説明
`source`や`destination`には、相対パスと絶対パスのどちらを指定することもできます。
相対パスを指定した場合、カレントディレクトリからの相対パスとして解釈します。

コピー元のファイルの属性は、コピー先には引き継がれません。
### 例
次の例では、`test1.txt`の暗号化されたコピーを`test2.txt`にコピーします。

```cs title="AliceScript"
using Alice.IO;

file_encrypt("test1.txt","test2.txt","password");
```
---
title: directory_create_symbolicLink
summary: ディレクトリへのシンボリックリンクを作成します。
date : 2023-12-16
---

### 定義
名前空間:Alice.IO / アセンブリ : Losetta.Runtime.dll / サポート: Alice3.0

属性: 関数

指定したパスに指定したパスへのシンボリックリンクを作成します。

```cs title="AliceScript"
namespace Alice.IO;
public void directory_create_symbolicLink(string path, string target);
```

|引数| |
|-|-|
|`path`|作成するシンボリックリンクのパス|
|`path`|シンボリックリンクの宛先へのパス|

!!!note "実装に関する注意"
    この関数はAliceScript、AliceSisterでは実装されていません。
    それらの環境では`0x034 NOT_IMPLEMENTED`例外がスローされます。

### 説明
`path`には、相対パスと絶対パスのどちらを指定することもできます。
相対パスを指定した場合、カレントディレクトリからの相対パスとして解釈します。
パスの大文字と小文字の区別は、環境およびファイルシステムに依存します。たとえば、NTFSでは大文字と小文字は区別されませんが、LFSでは大文字と小文字が区別されます。

この関数は、ディレクトリへのシンボリックリンクを作成します。
ファイルへのシンボリックリンクを作成することはできません。
### 例
次の例では、`test`というディレクトリへのシンボリックリンク`link`を作成します。

```cs title="AliceScript"
using Alice.IO;

directory_create_symbolicLink("test","link");
```

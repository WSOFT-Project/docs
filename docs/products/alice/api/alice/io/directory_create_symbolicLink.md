---
title: directory_create_symbolicLink
summary: ディレクトリへのシンボリックリンクを作成します。
date : 2023-12-16
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### directory_create_symbolicLink(string,string)

指定したパスに指定したパスへのシンボリックリンクを作成します。

```cs title="AliceScript"
namespace Alice.IO;
public void directory_create_symbolicLink(string path, string target);
```

|引数| |
|-|-|
|`path`|作成するシンボリックリンクのパス|
|`path`|シンボリックリンクの宛先へのパス|

???note "対応: Alice3.0以降、Losettaのみ"
    |対応||
    |---|---|
    |AliceScript|該当なし|
    |AliceSister|該当なし|
    |Losetta|0.10|

    この関数はAliceScript、AliceSisterでは実装されていません。

    実装されていない環境では`0x034 NOT_IMPLEMENTED`例外がスローされます。

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

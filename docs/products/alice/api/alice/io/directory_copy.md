---
title: directory_copy
summary: 指定したディレクトリを別の場所にコピーします。
date : 2024-05-01
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### directory_copy(string,string)

指定したディレクトリを別の場所にコピーします。

```cs title="AliceScript"
namespace Alice.IO;
public void directory_copy(string source, string destination, bool copySubDirectories = true);
```

|引数| |
|-|-|
|`source`|コピー元のディレクトリへのパス|
|`destination`|コピー先のディレクトリへのパス|
|`copySubDirectories`|コピー元のディレクトリにあるサブディレクトリもコピーする場合は`true`、それ以外の場合は`false`。既定値は`true`です。|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 説明
`source`や`destination`には、相対パスと絶対パスのどちらを指定することもできます。
相対パスを指定した場合、カレントディレクトリからの相対パスとして解釈します。
パスの大文字と小文字の区別は、環境およびファイルシステムに依存します。たとえば、NTFSでは大文字と小文字は区別されませんが、LFSでは大文字と小文字が区別されます。

`destination`にすでにファイルやディレクトリが存在する場合、それを上書きしてコピーします。
### 例
次の例では、`main`ディレクトリを`test`ディレクトリにコピーしています。

```cs title="AliceScript"
using Alice.IO;

directory_copy("main","test");
```
---
title: file_write_data
summary: 指定したファイルに、指定されたデータを書き込みます。
date : 2021-07-28
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### file_write_data(string,bytes)

新しいファイルを作成し、指定されたデータを書き込みます。
ファイルがすでに存在する場合は先頭から上書きします。

```cs title="AliceScript"
namespace Alice.IO;
public void file_write_data(string path, bytes content);
```

|引数| |
|-|-|
|`path`|書き込むファイルへのパス|
|`content`|ファイルに書き込む内容|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 説明

`path`には、相対パスと絶対パスのどちらでも指定できます。
相対パスを指定した場合、カレントディレクトリからの相対パスとして解釈します。
パスの大文字と小文字の区別は、環境およびファイルシステムに依存します。たとえば、NTFSでは大文字と小文字は区別されませんが、LFSでは大文字と小文字が区別されます。

この関数は、`path`が存在しない場合新しいファイルを作成し、存在する場合はそれを上書きします。

この関数では、対象ファイルが存在しない場合はファイルを作成しますが、新しいディレクトリは作成しません。したがって、`path`には少なくとも有効なディレクトリまでのパスが含まれる必要があります。
### 例
次の例では、`test.txt`を読み取り、`test2.txt`に読み取った内容を書き込みます。

```cs title="AliceScript"
using Alice.IO;

var content = file_read_data("test.txt");
file_write_data("test2.txt",content);
```

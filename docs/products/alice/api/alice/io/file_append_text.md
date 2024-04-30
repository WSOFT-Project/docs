---
title: file_append_text
summary: 指定したファイルに、指定された文字列を追記します。
date : 2021-07-28
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
実装: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### file_append_text(string,string)

指定したファイルに、指定された文字列を追記します。
ファイルが存在しない場合は、ファイルを作成してから書き込みます。

```cs title="AliceScript"
namespace Alice.IO;
public void file_append_text(string path,string content);
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

#### file_append_text(string,string,string)

指定したファイルに、指定された文字コード名で指定された文字列を追記します。
ファイルが存在しない場合は、ファイルを作成してから書き込みます。

```cs title="AliceScript"
namespace Alice.IO;
public void file_append_text(string path,string content,string charCode);
```

|引数| |
|-|-|
|`path`|書き込むファイルへのパス|
|`content`|ファイルに書き込む内容|
|`charCode`|書き込みに使用する文字コードを表す文字列|

???note "対応: Alice2.0以降"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0|
    |AliceSister|2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.9、0.10|

#### file_append_text(string,string,number)

指定したファイルに、指定されたコードページ番号に対応する文字コードで指定された文字列を追記します。
ファイルが存在しない場合は、ファイルを作成してから書き込みます。

```cs title="AliceScript"
namespace Alice.IO;
public void file_append_text(string path,string content,number codePage);
```

|引数| |
|-|-|
|`path`|書き込むファイルへのパス|
|`content`|ファイルに書き込む内容|
|`charCode`|書き込みに使用する文字コードに対応するコードページ番号|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 説明

`path`やには、相対パスと絶対パスのどちらを指定することもできます。
相対パスを指定した場合、カレントディレクトリからの相対パスとして解釈します。
パスの大文字と小文字の区別は、環境およびファイルシステムに依存します。たとえば、NTFSでは大文字と小文字は区別されませんが、LFSでは大文字と小文字が区別されます。

この関数は、`path`が存在しない場合新しいファイルを作成し、存在する場合はそれを上書きします。また、書き込み時に文字コードを指定しなかった場合は自動的にBOMなしUTF-8が使用されます。

この関数では、対象ファイルが存在しない場合はファイルを作成しますが、新しいディレクトリは作成しません。したがって、`path`には少なくとも有効なディレクトリまでのパスが含まれる必要があります。
### 例
次の例では、BOMなしUTF-8を用いて`test.txt`に文字列を追記します。

```cs title="AliceScript"
using Alice.IO;

file_append_text("test.txt","Hello,World");
```

次の例では、Shift-JIS(コードページ932)を用いて`test.txt`に文字列を追記します。

```cs title="AliceScript"
using Alice.IO;

file_append_text("test.txt","Hello,World",932);
```
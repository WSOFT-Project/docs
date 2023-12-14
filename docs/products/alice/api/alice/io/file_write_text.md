---
title: file_write_text
summary: 指定したファイルに、指定された文字列を書き込みます。
date : 2021-07-28
---
### 定義
名前空間:Alice.IO / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

新しいファイルを作成し、指定された文字列を書き込みます。
ファイルがすでに存在する場合は先頭から上書きします。

```cs title="AliceScript"
namespace Alice.IO;
public void file_write_text(string path,string content);
```

|引数| |
|-|-|
|`path`|書き込むファイルへのパス|
|`content`|ファイルに書き込む内容|

サポート：Alice2.0

新しいファイルを作成し、指定された文字コード名で指定された文字列を書き込みます。
ファイルがすでに存在する場合は先頭から上書きします。

```cs title="AliceScript"
namespace Alice.IO;
public void file_write_text(string path,string content,string charCode);
```

|引数| |
|-|-|
|`path`|書き込むファイルへのパス|
|`content`|ファイルに書き込む内容|
|`charCode`|書き込みに使用する文字コードを表す文字列|

サポート：Alice3.0

新しいファイルを作成し、指定されたコードページ番号に対応する文字コードで指定された文字列を書き込みます。
ファイルがすでに存在する場合は先頭から上書きします。

```cs title="AliceScript"
namespace Alice.IO;
public void file_write_text(string path,string content,number codePage);
```

|引数| |
|-|-|
|`path`|書き込むファイルへのパス|
|`content`|ファイルに書き込む内容|
|`charCode`|書き込みに使用する文字コードに対応するコードページ番号|
### 説明

`path`やには、相対パスと絶対パスのどちらを指定することもできます。
相対パスを指定した場合、カレントディレクトリからの相対パスとして解釈します。

この関数は、`path`が存在しない場合新しいファイルを作成し、存在する場合はそれを上書きします。また、書き込み時に文字コードを指定しなかった場合は自動的にBOMなしUTF-8が使用されます。

この関数では、対象ファイルが存在しない場合はファイルを作成しますが、新しいディレクトリは作成しません。したがって、`path`には少なくとも有効なディレクトリまでのパスが含まれる必要があります。
### 例
次の例では、BOMなしUTF-8を用いて`test.txt`に文字列を書き込みます。

```cs title="AliceScript"
using Alice.IO;

file_write_text("test.txt","Hello,World");
```

次の例では、Shift-JIS(コードページ932)を用いて`test.txt`に文字列を書き込みます。

```cs title="AliceScript"
using Alice.IO;

file_write_text("test.txt","Hello,World",932);
```
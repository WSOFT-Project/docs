---
title: file_read_text
summary: 指定したファイルを読み取り、結果を文字列で返します。
date : 2021-07-28
---
### 定義
名前空間:Alice.IO / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

指定したファイルを読み取り、結果を文字列で返します。

```cs title="AliceScript"
namespace Alice.IO;
public string file_read_text(string path);
```

|引数| |
|-|-|
|`path`|読み取るファイルへのパス|

|戻り値| |
|-|-|
|`string`|ファイル内のすべての文字列|

サポート : Alice2.0

指定したファイルをファイルシステムまたは現在のパッケージから読み取り、結果を文字列で返します。

```cs title="AliceScript"
namespace Alice.IO;
public string file_read_text(string path,bool fromPackage);
```

|引数| |
|-|-|
|`path`|読み取るファイルへのパス|
|`fromPackage`|ファイルを現在のパッケージから読み取る場合は`true`、ファイルシステムから読み取る場合は`false`|

|戻り値| |
|-|-|
|`string`|ファイル内のすべての文字列|

サポート : Alice2.0

指定したファイルをファイルシステムまたは現在のパッケージから読み取り、結果を指定された文字コードで解釈した文字列を返します。

```cs title="AliceScript"
namespace Alice.IO;
public string file_read_text(string path,string charcode,bool fromPackage = false);
```

|引数| |
|-|-|
|`path`|読み取るファイルへのパス|
|`charcode`|結果を解釈する文字コードを表す文字列|
|`fromPackage`|ファイルを現在のパッケージから読み取る場合は`true`、ファイルシステムから読み取る場合は`false`|

|戻り値| |
|-|-|
|`string`|ファイル内のすべての文字列|


サポート : Alice2.0

指定したファイルをファイルシステムまたは現在のパッケージから読み取り、結果を指定された文字コードで解釈した文字列を返します。

```cs title="AliceScript"
namespace Alice.IO;
public string file_read_text(string path,number codepage,bool fromPackage = false);
```

|引数| |
|-|-|
|`path`|読み取るファイルへのパス|
|`codepage`|結果を解釈する文字コードを表すコード番号|
|`fromPackage`|ファイルを現在のパッケージから読み取る場合は`true`、ファイルシステムから読み取る場合は`false`|

|戻り値| |
|-|-|
|`string`|ファイル内のすべての文字列|
### 説明
この関数は、ファイルを開き、ファイル内のデータをすべて読み取った後ファイルを閉じて結果を返します。

この関数は、文字コードが指定されなかった場合、[ReadJEnc](https://github.com/hnx8/ReadJEnc)を使用してファイルで使用されている文字コードを自動的に検出します。

`source`や`destination`には、相対パスと絶対パスのどちらを指定することもできます。
相対パスを指定した場合、カレントディレクトリからの相対パスとして解釈します。

関数内で例外が発生した場合でも、ファイルは適切に閉じられます。

### 例
次の例では、`test.txt`を読み取り、コンソールに出力します、

```cs title="AliceScript"
using Alice.IO;

string content = file_read_text("test.txt");
print(content);
```

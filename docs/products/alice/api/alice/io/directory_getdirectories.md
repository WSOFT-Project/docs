---
title: directory_getDirectories
summary: 指定した条件を満たすサブディレクトリへのパスのリストを返します。
mt_type: function
mt_title: directory_getDirectories(string)
mt_summary: 指定したディレクトリ内のサブディレクトリへのパスのリストを返します。
mt_title: directory_getDirectories(string,string)
mt_summary: 指定したディレクトリ内の指定したパターンに一致するサブディレクトリへのパスのリストを返します。
mt_title: directory_getDirectories(string,string,bool)
mt_summary: 指定したディレクトリ内の指定したパターンに一致するサブディレクトリへのパスのリストを返します。
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### directory_getDirectories(string)

指定したディレクトリ内のサブディレクトリへのパスのリストを返します。

```cs title="AliceScript"
namespace Alice.IO;
#obsolete "directory_get_directoriesを使用してください"
public string[] directory_getDirectories(string path);
```

|引数| |
|-|-|
|`path`|検索するディレクトリへのパス|

|戻り値| |
|-|-|
|`string[]`|指定したディレクトリ内のサブディレクトリへのパスの配列。ただし、サブディレクトリが見つからない場合は空の配列|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

#### directory_getDirectories(string,string)

指定したディレクトリ内の指定したパターンに一致するサブディレクトリへのパスのリストを返します。

```cs title="AliceScript"
namespace Alice.IO;
#obsolete "directory_get_directoriesを使用してください"
public string[] directory_getDirectories(string path, string pattern);
```

|引数| |
|-|-|
|`path`|検索するディレクトリへのパス|
|`pattern`|見つかったサブディレクトリの名前と比較するパターン。ワイルドカードを使用できますが、正規表現は使用できません|

|戻り値| |
|-|-|
|`string[]`|指定したディレクトリ内の検索パターンに一致するサブディレクトリへのパスの配列。ただし、サブディレクトリが見つからない場合は空の配列|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

#### directory_getDirectories(string,string,bool)

指定したディレクトリ内の指定したパターンに一致するサブディレクトリへのパスのリストを返します。

```cs title="AliceScript"
namespace Alice.IO;
#obsolete "directory_get_directoriesを使用してください"
public string[] directory_getDirectories(string path, string pattern, bool searchSubDir);
```

|引数| |
|-|-|
|`path`|検索するディレクトリへのパス|
|`pattern`|見つかったサブディレクトリの名前と比較するパターン。ワイルドカードを使用できますが、正規表現は使用できません|
|`searchSubDir`|すべてのサブディレクトリを含める場合は`true`、`path`で指定されたディレクトリのみを検索する場合は`false`|

|戻り値| |
|-|-|
|`string[]`|指定したディレクトリ内の検索パターンに一致するサブディレクトリへのパスの配列。ただし、サブディレクトリが見つからない場合は空の配列|

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

`pattern`にはリテラルとワイルドカードの組み合わせを使用できます。使用できるワイルドカードは以下の通りです。

パターン|意味
---|---
`?`|任意の一文字
`*`|0個以上の任意の文字

上記のワイルドカード以外の文字は、すべてリテラル文字です。
たとえば、`dir_*`は`dir_`から始まるすべてのディレクトリを検索します。

#### AliceSisterでの特殊な挙動

`pattern`にアスタリスク(`*`)を使ったワイルドカードを使用し、かつ3文字の拡張子(`*.txt`など)を指定すると、この関数は、指定した拡張子で始まる拡張子を持つファイルも返します。たとえば、`*.xls`というパターンでは、`book.xls`と`book.xlsx`の両方を返します。

これは、Windowsがユーザーに見える「長いファイル名」と別に8.3形式と呼ばれる「短いファイル名」を持たせていることに由来します。Windowsではファイル名が8文字を超えたり、拡張子が3文字を超えるファイルについて、通常のファイル名と別に短いファイル名を自動的に付与します。

AliceSisterでのこの関数は、長いファイル名と8.3形式の短いファイル名の両方をチェックするため、8.3形式ではないファイル名に意図せずマッチしてしまう可能性があります。次の表に、AliceSisterとそれ以外の実装でマッチするファイルを示します。

ディレクトリ内のファイル|検索パターン|Losettaでの戻り値|AliceSisterでの戻り値
---|---|---|---
file.ai、file.aif|*.ai|file.ai|file.ai
book.xls、book.xlsx|*.xls|book.xls|book.xls、book.xlsx
file.ai、file.aif|????.ai|file.ai|file.ai
book.xls、book.xlsx|????.xls|book.xls|book.xls

AliceScriptおよびAliceSisterでは、この問題は発生しません。

### 例
次の例では、`test`というディレクトリ内に存在するすべてのディレクトリを表示しています。

```cs title="AliceScript"
using Alice.IO;

var dirs = directory_getDirectories("test");
print(dirs);
```

次の例では、`test`というディレクトリ内に存在し、`tmp`で始まるすべてのディレクトリを表示しています。

```cs title="AliceScript"
using Alice.IO;

var dirs = directory_getDirectories("test","tmp*");
print(dirs);
```
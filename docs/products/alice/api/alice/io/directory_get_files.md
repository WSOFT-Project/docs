---
title: directory_get_Files
summary: 指定した条件を満たすファイルへのパスのリストを返します。
date : 2024-05-02
draft : true
---

!!!info "プレビュー"
    この記事では、現在開発中のAlice vNEXTに実装される予定のAPIについて説明しています。
    このAPIは予告なく削除および変更される可能性があります。

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### directory_get_files(string)

指定したディレクトリ内のファイルへのパスのリストを返します。

```cs title="AliceScript"
namespace Alice.IO;
public string[] directory_get_files(string path);
```

|引数| |
|-|-|
|`path`|検索するディレクトリへのパス|

|戻り値| |
|-|-|
|`string[]`|指定したディレクトリ内のファイルへのパスの配列。ただし、サブディレクトリが見つからない場合は空の配列|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

#### directory_get_files(string,string)

指定したディレクトリ内の指定したパターンに一致するファイルへのパスのリストを返します。

```cs title="AliceScript"
namespace Alice.IO;
public string[] directory_get_files(string path, string pattern);
```

|引数| |
|-|-|
|`path`|検索するディレクトリへのパス|
|`pattern`|見つかったファイルの名前と比較するパターン。ワイルドカードを使用できますが、正規表現は使用できません|

|戻り値| |
|-|-|
|`string[]`|指定したディレクトリ内のファイルへのパスの配列。ただし、サブディレクトリが見つからない場合は空の配列|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

#### directory_get_files(string,string,bool)

指定したディレクトリ内の指定したパターンに一致するファイルへのパスのリストを返します。

```cs title="AliceScript"
namespace Alice.IO;
public string[] directory_get_files(string path, string pattern, bool searchSubDir);
```

|引数| |
|-|-|
|`path`|検索するディレクトリへのパス|
|`pattern`|見つかったファイルの名前と比較するパターン。ワイルドカードを使用できますが、正規表現は使用できません|
|`searchSubDir`|すべてのサブディレクトリを含める場合は`true`、`path`で指定されたディレクトリのみを検索する場合は`false`|

|戻り値| |
|-|-|
|`string[]`|指定したディレクトリ内のファイルへのパスの配列。ただし、サブディレクトリが見つからない場合は空の配列|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

### 説明

`path`には、相対パスと絶対パスのどちらを指定することもできます。
相対パスを指定した場合、カレントディレクトリからの相対パスとして解釈します。
パスの大文字と小文字の区別は、環境およびファイルシステムに依存します。たとえば、NTFSでは大文字と小文字は区別されませんが、LFSでは大文字と小文字が区別されます。

`pattern`にはリテラルとワイルドカードの組み合わせを使用できます。使用できるワイルドカードは以下の通りです。

パターン|意味
---|---
`?`|任意の一文字
`*`|0個以上の任意の文字

上記のワイルドカード以外の文字は、すべてリテラル文字です。
たとえば、`dir_*`は`dir_`から始まるすべてのディレクトリを検索します。

### 例
次の例では、`test`というディレクトリ内に存在するすべてのファイルを表示しています。

```cs title="AliceScript"
using Alice.IO;

var files = directory_get_Files("test");
print(files);
```

次の例では、`test`というディレクトリ内に存在し、`.txt`で終わるすべてのファイルを表示しています。

```cs title="AliceScript"
using Alice.IO;

var files = directory_get_Files("test","*.txt");
print(files);
```
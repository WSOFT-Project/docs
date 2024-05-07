---
title: directory_get_files
summary: 指定した条件を満たすファイルへのパスのリストを返します。
date : 2024-05-02
draft : true
---

この関数には、古いバージョンがあります。
> [!SELECTOR] 対象バージョンを選択
> [Alice2.3以前](./directory_getfiles.md.md)
> [Alice3.0以降](./directory_get_files.md)

<br/>

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### directory_get_files(string)

> [!IMPORTANT] プレビュー
> この記事では、現在開発中のAlice vNEXTに実装される予定のAPIについて説明しています。
> このAPIは予告なく削除および変更される可能性があります。

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
|`string[]`|指定したディレクトリ内のファイルへのパスの配列。ただし、条件に一致するファイルが見つからない場合は空の配列。|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

#### directory_get_files(string,string)

> [!IMPORTANT] プレビュー
> この記事では、現在開発中のAlice vNEXTに実装される予定のAPIについて説明しています。
> このAPIは予告なく削除および変更される可能性があります。

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
|`string[]`|指定したディレクトリ内のファイルへのパスの配列。ただし、条件に一致するファイルが見つからない場合は空の配列。|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

#### directory_get_files(string,string,bool)

> [!IMPORTANT] プレビュー
> この記事では、現在開発中のAlice vNEXTに実装される予定のAPIについて説明しています。
> このAPIは予告なく削除および変更される可能性があります。

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
|`string[]`|指定したディレクトリ内のファイルへのパスの配列。ただし、条件に一致するファイルが見つからない場合は空の配列。|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

#### directory_get_files(string,string,bool,bool,bool,bool,bool,number,number)

> [!IMPORTANT] プレビュー
> この記事では、現在開発中のAlice vNEXTに実装される予定のAPIについて説明しています。
> このAPIは予告なく削除および変更される可能性があります。

指定したディレクトリ内の指定したパターンに一致するファイルへのパスのリストを返します。

```cs title="AliceScript"
namespace Alice.IO;
public string[] directory_get_files(string path, string pattern, bool searchSubDir, bool? matchCasing = null, bool matchByWin32Style = false, bool returnSpecialDirectories = false, bool ignoreInaccessible = true, number maxRecursionDepth = 2147483647, number bufferSize = 0);
```

|引数| |
|-|-|
|`path`|検索するディレクトリへのパス|
|`pattern`|見つかったファイルの名前と比較するパターン。ワイルドカードを使用できますが、正規表現は使用できません|
|`searchSubDir`|すべてのサブディレクトリを含める場合は`true`、`path`で指定されたディレクトリのみを検索する場合は`false`|
|`matchCasing`|`pattern`を大文字と小文字を区別して比較する場合は`true`、区別しない場合は`false`、実行しているプラットフォームの規定値を使用する場合は`null`。この引数の規定値は`null`です。|
|`matchByWin32Style`|Windowsスタイルの複雑なパターンマッチを使用する場合は`true`、それ以外の場合は`false`。この引数の規定値は`false`です。|
|`returnSpecialDirectories`|検索結果に`.`と`..`を含める場合は`true`、それ以外の場合は`false`。この引数の規定値は`false`です。|
|`ignoreInaccessible`|アクセスが拒否されたときに例外を発生させず検索を続ける場合は`true`、それ以外の場合は`false`。この引数の規定値は`true`です。|
|`maxRecursionDepth`|再帰的にサブディレクトリを探索するとき、探索する最大深さ。この引数の規定値および最大値は`2147483647`です。|
|`bufferSize`|ディレクトリの探索に使用する既定のバッファサイズ(バイト単位)。この引数の規定値は`0`です。|

|戻り値| |
|-|-|
|`string[]`|指定したディレクトリ内のファイルへのパスの配列。ただし、条件に一致するファイルが見つからない場合は空の配列。|

???note "対応: 未実装、AliceScriptとLosettaのみ"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

    この関数はAliceSisterでは実装されていません。

    実装されていない環境では`0x034 NOT_IMPLEMENTED`例外がスローされます。

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

`matchByWin32Style`を`true`に設定すると、この関数はWin32スタイルの方式を使用してワイルドカードを照合するようになります。このとき、すでに上記の表で示した`*`、`?`に加えて、`<`、`>`、`"`もワイルドカードとみなされます。また、`pattern`を`*.*`にしていすると、ファイル名にピリオドを含むかによらずすべてのファイルにマッチします。(`false`の場合はピリオドを含まないファイルにはマッチしません)

この関数は、[directory_getFiles](./directory_getfiles.md)とは異なり、探索中にあるファイルまたはディレクトリへのアクセスが拒否されたときに例外を発生させずに探索を続行します。`ignoreInaccessible`を`false`にすることで、アクセスが拒否されたときに例外を発生するように設定できます。

`maxRecursionDepth`に`0`を指定すると、`searchSubDir`の値によらずサブディレクトリを再帰的に検索しないようになります。

一部のプラットフォームでは、探索のために十分な領域をもつバッファーが必要です。`bufferSize`の値を大きくすると、探索中のパフォーマンスが向上する可能性があります。一般に、標準的なバッファーサイズは`4096`で、大きいとされるサイズは`16384`です。ただし、`bufferSize`でバッファーサイズを指定したとしても、その値がすべてのプラットフォームで使用されるとは限りません。現在スクリプトが実行されているプラットフォーム上のAPIで、バッファーサイズが指定できない場合や結果を取得するには小さすぎる場合には、この値は使用されません。

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
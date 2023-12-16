---
title: directory_create
summary: ディレクトリを作成します。
date : 2021-07-28
---

### 定義
名前空間:Alice.IO / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

指定したパスにディレクトリを作成します。
すでにディレクトリが存在する場合は何もしません。

```cs title="AliceScript"
namespace Alice.IO;
public void directory_create(string path);
```

|引数| |
|-|-|
|`path`|作成するディレクトリのパス|

指定したファイルを別の場所にコピーします。
`overwrite`が`false`で、かつ`destination`にすでにファイルがある場合は例外が発生します。

### 説明
この関数は、`path`で指定されたディレクトリの親ディレクトリがない場合、再帰的に作成します。つまり、`a/b`を指定した場合、存在しない場合はディレクトリ`a`を作成しその中にディレクトリ`b`を作成します。

`path`には、ファイル名を指定してはいけません。また、末尾の空白文字は自動的に削除されます。

`:`(コロン)のみのディレクトリを作成することはできません。
### 例
次の例では、`test`というディレクトリを作成します。

```cs title="AliceScript"
using Alice.IO;

directory_create("test");
```
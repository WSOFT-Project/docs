---
title: file_copy
summary: 指定したファイルを別の場所にコピーします。
date : 2021-07-28
---
### 定義
名前空間:Alice.IO / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

指定したファイルを新しい場所にコピーします。
`destination`にすでにファイルがある場合は例外が発生します。

```cs title="AliceScript"
namespace Alice.IO;
public void file_copy(string source,string destination);
```

|引数| |
|-|-|
|`source`|コピー元のファイルへのパス|
|`destination`|コピー先のファイルへのパス|

指定したファイルを別の場所にコピーします。
`overwrite`が`false`で、かつ`destination`にすでにファイルがある場合は例外が発生します。

```cs title="AliceScript"
namespace Alice.IO;
public void file_copy(string source,string destination,bool overwrite);
```

|引数| |
|-|-|
|`source`|コピー元のファイルへのパス|
|`destination`|コピー先のファイルへのパス|
|`overwrite`|コピー先にファイルが存在する場合に置き換える場合は`true`、それ以外の場合は`false`|

### 説明
`source`や`destination`には、相対パスと絶対パスのどちらを指定することもできます。
相対パスを指定した場合、カレントディレクトリからの相対パスとして解釈します。
パスの大文字と小文字の区別は、環境およびファイルシステムに依存します。たとえば、NTFSでは大文字と小文字は区別されませんが、LFSでは大文字と小文字が区別されます。

コピー先のファイルの属性は、コピー元のファイルと同一になります。
### 例
次の例では、`test1.txt`を`test2.txt`にコピーします。

```cs title="AliceScript"
using Alice.IO;

file_copy("test1.txt","test2.txt");
```
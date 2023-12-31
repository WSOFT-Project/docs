---
title: file_move
summary: 指定したファイルを別の場所に移動します
date : 2021-07-28
---
### 定義
名前空間:Alice.IO / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

指定したファイルを新しい場所に移動します。
`destination`にすでにファイルがある場合は例外が発生します。

```cs title="AliceScript"
namespace Alice.IO;
public void file_move(string source,string destination);
```

|引数| |
|-|-|
|`source`|移動元のファイルへのパス|
|`destination`|移動先のファイルへのパス|

指定したファイルを別の場所に移動します。
`overwrite`が`false`で、かつ`destination`にすでにファイルがある場合は例外が発生します。

```cs title="AliceScript"
namespace Alice.IO;
public void file_move(string source,string destination,bool overwrite);
```

|引数| |
|-|-|
|`source`|移動元のファイルへのパス|
|`destination`|移動先のファイルへのパス|
|`overwrite`|移動先にファイルが存在する場合に置き換える場合は`true`、それ以外の場合は`false`|

!!!note "実装に関する注意"
    このオーバーロードはAliceSisterでは実装されていません。
    それらの環境では`0x034 NOT_IMPLEMENTED`例外がスローされます。

### 説明
この関数を使用して、ファイルの名前を変更できます。

`source`や`destination`には、相対パスと絶対パスのどちらを指定することもできます。
相対パスを指定した場合、カレントディレクトリからの相対パスとして解釈します。
パスの大文字と小文字の区別は、環境およびファイルシステムに依存します。たとえば、NTFSでは大文字と小文字は区別されませんが、LFSでは大文字と小文字が区別されます。

この関数ではディスクやボリュームをまたいだファイルの移動もできます。
その場合、ファイルをコピーし、ファイルのコピーが成功した場合移動元ファイルを削除する動作をとります。

ディスクやボリュームをまたいだファイルの移動を行うとき、移動元ファイルが使用中の場合、ファイルは移動先にコピーされますが移動元は削除されません。つまり、コピーと同じ動作になります。


### 例
次の例では、`test1.txt`を`test2.txt`に名前変更します。

```cs title="AliceScript"
using Alice.IO;

file_move("test1.txt","test2.txt");
```
---
title: file_move
summary: 指定したファイルを別の場所に移動します
date : 2021-07-28
mt_type: function
mt_title: file_move(string,string)
mt_summary: 指定したファイルを新しい場所に移動します。
mt_title: file_move(string,string,bool)
mt_summary: 上書きを行うかどうかを指定して、指定したファイルを別の場所に移動します。
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### file_move(string,string)

指定したファイルを新しい場所に移動します。
`destination`にすでにファイルがある場合は例外が発生します。

```cs title="AliceScript"
namespace Alice.IO;
public void file_move(string source, string destination);
```

|引数| |
|-|-|
|`source`|移動元のファイルへのパス|
|`destination`|移動先のファイルへのパス|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

#### file_move(string,string,bool)

上書きを行うかどうかを指定して、指定したファイルを別の場所に移動します。
`overwrite`が`false`で、かつ`destination`にすでにファイルがある場合は例外が発生します。

```cs title="AliceScript"
namespace Alice.IO;
public void file_move(string source, string destination, bool overwrite);
```

|引数| |
|-|-|
|`source`|移動元のファイルへのパス|
|`destination`|移動先のファイルへのパス|
|`overwrite`|移動先にファイルが存在する場合に置き換える場合は`true`、それ以外の場合は`false`|

???note "対応: Alice3.0以降、AliceScriptとLosettaのみ"
    |対応||
    |---|---|
    |AliceScript|3.0、4|
    |AliceSister|該当なし|
    |Losetta|0.10、0.11|

    この関数はAliceSisterでは実装されていません。

    実装されていない環境では`0x034 NOT_IMPLEMENTED`例外がスローされます。

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
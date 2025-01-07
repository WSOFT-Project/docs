---
title: file_copy
summary: 指定したファイルを別の場所にコピーします。
date : 2021-07-28
mt_type: function
mt_title: file_copy(string,string)
mt_summary: 指定したファイルを新しい場所にコピーします。
destinationにすでにファイルがある場合は例外が発生します。
mt_title: file_copy(string,string,bool)
mt_summary: 指定したファイルを別の場所にコピーします。
overwriteがfalseで、かつdestinationにすでにファイルがある場合は例外が発生します。
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### file_copy(string,string)

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

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

#### file_copy(string,string,bool)

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

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

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
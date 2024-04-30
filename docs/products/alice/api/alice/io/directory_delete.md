---
title: directory_delete
summary: 指定されたディレクトリを削除します。
date : 2021-07-28
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
実装: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### directory_delete(string)

指定されたパスにある空のディレクトリを削除します。
ディレクトリにファイルやディレクトリが残っている場合、例外が発生します。

```cs title="AliceScript"
namespace Alice.IO;
public void directory_delete(string path);
```

|引数| |
|-|-|
|`path`|削除するディレクトリのパス|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

#### directory_delete(string,bool)

指定されたパスにあるディレクトリを削除します。
`recursive`が`false`で、ディレクトリにファイルやディレクトリが残っている場合、例外が発生します。

```cs title="AliceScript"
namespace Alice.IO;
public void directory_delete(string path, bool recursive);
```

|引数| |
|-|-|
|`path`|削除するディレクトリのパス|
|`recursive`|ディレクトリ内のサブディレクトリまたはファイルを再帰的に削除する場合は`true`、空ではない場合に例外を発生させるには`false`。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 説明
`path`には、相対パスと絶対パスのどちらを指定することもできます。
相対パスを指定した場合、カレントディレクトリからの相対パスとして解釈します。
パスの大文字と小文字の区別は、環境およびファイルシステムに依存します。たとえば、NTFSでは大文字と小文字は区別されませんが、LFSでは大文字と小文字が区別されます。

`path`には、ファイル名を指定してはいけません。また、末尾の空白文字は自動的に削除されます。

シンボリックリンクやマウントポイントなどを削除する場合、シンボリックリンクのターゲットは削除されずリンクが解除され、マウントが解除され、マウントポイントが削除されます。つまり、リンクのターゲットは削除されません。
### 例
次の例では、`test`というディレクトリを削除します。

```cs title="AliceScript"
using Alice.IO;

directory_delete("test");
```
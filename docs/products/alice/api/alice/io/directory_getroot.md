---
title: directory_getRoot
summary: 指定したパスが所属するルートディレクトリを取得します。
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### directory_getRoot(string)

指定したパスが所属するルートディレクトリを取得します。

```cs title="AliceScript"
namespace Alice.IO;
public string directory_getRoot(string path);
```

|引数| |
|-|-|
|`path`|ファイルやディレクトリへのパス|

|戻り値| |
|-|-|
|`string`|指定したパスが所属するルートディレクトリへのパス|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 説明
この関数は、`path`を絶対パスに変換し、そのルートディレクトリへのパスを取得します。
パスは必ずしも存在するものを指定する必要はありません。

`path`には、相対パスと絶対パスのどちらでも指定できます。
相対パスを指定した場合、カレントディレクトリからの相対パスとして解釈します。
パスの大文字と小文字の区別は、環境およびファイルシステムに依存します。たとえば、NTFSでは大文字と小文字は区別されませんが、LFSでは大文字と小文字が区別されます。

### 例
次の例では、`test`というディレクトリが所属するディスクのルートディレクトリを表示しています。

```cs title="AliceScript"
using Alice.IO;

var root = directory_getRoot("test");
print(root);
//出力例: C:\
```

次の例では、カレントディレクトリが所属するディスクのルートディレクトリを表示しています。

```cs title="AliceScript"
using Alice.IO;

var root = directory_getRoot(".");
print(root);
//出力例: /
```

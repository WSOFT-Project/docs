---
title: file_delete
summary: 指定したファイルを削除します
date : 2021-07-28
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### file_delete(string)

指定したファイルを削除します。

```cs title="AliceScript"
namespace Alice.IO;
public void file_delete(string path);
```

|引数| |
|-|-|
|`path`|削除するファイルへのパス|

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

`path`に対する有効なアクセス許可がないか、他のアプリケーションによって開かれている場合は、例外が発生します。
`path`にファイルが存在しない場合でも、この関数は例外を発生させません。
### 例
次の例では、`test.txt`を削除します。

```cs title="AliceScript"
using Alice.IO;

file_delete("test.txt");
```

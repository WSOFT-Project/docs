---
title: file_delete
summary: 指定したファイルを削除します
date : 2021-07-28
---
### 定義
名前空間:Alice.IO / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

指定したファイルを削除します。

```cs title="AliceScript"
namespace Alice.IO;
public void file_delete(string path);
```

|引数| |
|-|-|
|`path`|削除するファイルへのパス|

### 説明
`path`には、相対パスと絶対パスのどちらを指定することもできます。
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

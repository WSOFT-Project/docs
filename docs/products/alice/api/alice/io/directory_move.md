---
title: directory_move
summary: 指定したファイルまたはディレクトリを別の場所に移動します。
---

### 定義
名前空間:Alice.IO / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

#### directory_move(string,string)

指定したファイルまたはディレクトリを別の場所に移動します。

```cs title="AliceScript"
namespace Alice.IO;
public void directory_move(string source, string destination);
```

|引数| |
|-|-|
|`source`|移動元のファイルやディレクトリへのパス|
|`destination`|移動先のファイルやディレクトリへのパス|

### 説明
この関数を使用して、ファイルまたはディレクトリの名前を変更できます。この関数では、`destination`で指定された新しいディレクトリを作成し、`source`にある内容を再帰的に新しく作成されたディレクトリに移動します。その後、`source`を削除します。

この関数では、ディレクトリを別のボリュームに移動することはできません。

`path`には、相対パスと絶対パスのどちらを指定することもできます。
相対パスを指定した場合、カレントディレクトリからの相対パスとして解釈します。
パスの大文字と小文字の区別は、環境およびファイルシステムに依存します。たとえば、NTFSでは大文字と小文字は区別されませんが、LFSでは大文字と小文字が区別されます。

`path`には、ファイル名を指定してはいけません。また、末尾の空白文字は自動的に削除されます。
### 例
次の例では、`test`というディレクトリが存在するか確認します。

```cs title="AliceScript"
using Alice.IO;

directory_exists("test");
```
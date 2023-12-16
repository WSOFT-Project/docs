---
title: directory_current
summary: 現在の作業ディレクトリを取得または設定します。
date : 2021-07-28
---

### 定義
名前空間:Alice.IO / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

現在の作業ディレクトリを取得します。

```cs title="AliceScript"
namespace Alice.IO;
public string directory_current();
```

|戻り値| |
|---|---|
|`string`|現在の作業ディレクトリへのパス。これは末尾の区切り文字(`\`または`/`)を含みません。|

現在の作業ディレクトリを指定したディレクトリに設定します。

```cs title="AliceScript"
namespace Alice.IO;
public string directory_current(string path);
```

|引数| |
|-|-|
|`path`|設定する現在の作業ディレクトリへのパス。|

|戻り値| |
|---|---|
|`string`|現在の作業ディレクトリへのパス。これは末尾の区切り文字(`\`または`/`)を含みません。|
### 説明
アプリケーションが終了すると、作業ディレクトリはプロセス開始時の場所に戻ります。

`path`には、相対パスと絶対パスのどちらを指定することもできます。
相対パスを指定した場合、カレントディレクトリからの相対パスとして解釈します。
パスの大文字と小文字の区別は、環境およびファイルシステムに依存します。たとえば、NTFSでは大文字と小文字は区別されませんが、LFSでは大文字と小文字が区別されます。

### 例
次の例では、現在の作業ディレクトリを`D:\Documents`に設定し、作業ディレクトリを表示します。

```cs title="AliceScript"
using Alice.IO;

directory_current("D:\\Documents");

print($"作業ディレクトリ : {directory_current()}");
```
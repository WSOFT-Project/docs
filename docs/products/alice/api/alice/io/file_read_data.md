---
title: file_read_data
summary: 指定したファイルを読み取り、ファイルの内容を返します。
date : 2021-07-28
---
### 定義
名前空間:Alice.IO / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

指定したファイルを読み取り、ファイルの内容を返します。

```cs title="AliceScript"
namespace Alice.IO;
public bytes file_read_data(string path);
```

|引数| |
|-|-|
|`path`|読み取るファイルへのパス|

|戻り値| |
|-|-|
|`bytes`|ファイルの内容を格納するバイト配列|

サポート : Alice2.0

指定したファイルをファイルシステムまたは現在のパッケージから読み取り、ファイルの内容を返します。

```cs title="AliceScript"
namespace Alice.IO;
public bytes file_read_data(string path,bool fromPackage);
```

|引数| |
|-|-|
|`path`|読み取るファイルへのパス|
|`fromPackage`|ファイルを現在のパッケージから読み取る場合は`true`、ファイルシステムから読み取る場合は`false`|

|戻り値| |
|-|-|
|`bytes`|ファイルの内容を格納するバイト配列|

### 説明

`source`や`destination`には、相対パスと絶対パスのどちらを指定することもできます。
相対パスを指定した場合、カレントディレクトリからの相対パスとして解釈します。

この関数は、ファイルを開き、ファイル内のデータをすべて読み取った後ファイルを閉じて結果を返します。


### 例
次の例では、`test.txt`を読み取り、そのファイルサイズを表示します。

```cs title="AliceScript"
using Alice.IO;

var content = file_read_data("test.txt");
print(content.Length);
```

---
title: file_read_data
summary: 指定したファイルを読み取り、ファイルの内容を返します。
date : 2021-07-28
mt_type: function
mt_title: file_read_data(string)
mt_summary: 指定したファイルを読み取り、ファイルの内容を返します。
mt_title: file_read_data(string,bool)
mt_summary: 指定したファイルをファイルシステムまたは現在のパッケージから読み取り、ファイルの内容を返します。
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### file_read_data(string)

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

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

#### file_read_data(string,bool)

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

???note "対応: Alice2.0以降"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.9、0.10、0.11|

### 説明

`source`や`destination`には、相対パスと絶対パスのどちらを指定することもできます。
相対パスを指定した場合、カレントディレクトリからの相対パスとして解釈します。
パスの大文字と小文字の区別は、環境およびファイルシステムに依存します。たとえば、NTFSでは大文字と小文字は区別されませんが、LFSでは大文字と小文字が区別されます。

この関数は、ファイルを開き、ファイル内のデータをすべて読み取った後ファイルを閉じて結果を返します。


### 例
次の例では、`test.txt`を読み取り、そのファイルサイズを表示します。

```cs title="AliceScript"
using Alice.IO;

var content = file_read_data("test.txt");
print(content.Length);
```

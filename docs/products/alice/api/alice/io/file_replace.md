---
title: file_replace
summary: 指定したファイルを別のファイルの内容で置き換えます
date : 2023-12-10
mt_type: function
mt_title: file_replace(string,string,string)
mt_summary: 指定したファイルを別のファイルの内容で置き換えます。
mt_title: file_replace(string,string,string,bool)
mt_summary: 指定したファイルを別のファイルの内容で置き換えます。
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### file_replace(string,string,string)

指定したファイルを別のファイルの内容で置き換えます。

```cs title="AliceScript"
namespace Alice.IO;
public void file_replace(string source,string destination,string backup);
```

|引数| |
|-|-|
|`source`|置き換えるファイルへのパス|
|`destination`|置き換えられるファイルへのパス|
|`backup`|バックアップファイルへのパス|

#### file_replace(string,string,string,bool)

指定したファイルを別のファイルの内容で置き換えます。

```cs title="AliceScript"
namespace Alice.IO;
public void file_replace(string source,string destination,string backup,bool ignoreMetadataErrors);
```

|引数| |
|-|-|
|`source`|置き換えるファイルへのパス|
|`destination`|置き換えられるファイルへのパス|
|`backup`|バックアップファイルへのパス|
|`ignoreMetadataErrors`|置き換え元のファイルから置き換え先ファイルへのマージエラーを無視する場合は`true`、それ以外の場合は`false`。|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 説明
ファイルの置換とは、コンピューター上でファイルを別のファイルの内容で置き換える操作のことです。たとえば、`master.txt`と`edit.txt`があったとき、`edit.txt`の内容を`master.txt`で置き換えるということです。`backup`を指定すると、置換前の`master.txt`の内容を別のファイルにバックアップできます。つまりこの関数は、`master.txt`をバックアップファイルに移動してから、`edit.txt`を`master.txt`に移動するのとほぼ同じ動作をします。

この操作では、`source`と`destination`両方のファイルが存在する必要があります。
また、`source`と`destination`、`backup`はすべて同じディスクおよびボリュームに存在する必要があります。
パスの大文字と小文字の区別は、環境およびファイルシステムに依存します。たとえば、NTFSでは大文字と小文字は区別されませんが、LFSでは大文字と小文字が区別されます。

`backup`にすでにファイルが存在する場合、`destination`の内容で上書きされます。

`source`や`destination`には、相対パスと絶対パスのどちらを指定することもできます。
相対パスを指定した場合、カレントディレクトリからの相対パスとして解釈します。
### 例
次の例では、`edit.txt`で行った編集を`master.txt`に反映します。
また、編集前のデータを`backup.txt`にバックアップします。

```cs title="AliceScript"
using Alice.IO;

file_replace("edit.txt","master.txt","backup.txt");
```
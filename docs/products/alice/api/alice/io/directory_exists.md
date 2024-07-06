---
title: directory_exists
summary: 指定されたディレクトリが存在するかを取得します。
date : 2021-07-28
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### directory_exists(string)

指定されたディレクトリが存在し、少なくとも読み取り権限があるかどうかを取得します。

```cs title="AliceScript"
namespace Alice.IO;
public void directory_exists(string path);
```

|引数| |
|-|-|
|`path`|削除するディレクトリのパス|

|戻り値| |
|---|---|
|`string`|指定されたパスにディレクトリが存在し、かつ有効なアクセス権限がある場合は`true`、それ以外の場合は`false`。|

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

`path`には、ファイル名を指定してはいけません。また、末尾の空白文字は自動的に削除されます。

この関数は、内部で何らかの例外が発生した場合、`false`を返します。
たとえば、パスに無効な文字が含まれている場合や読み取り権限がない場合、ディレクトリに障害が発生している場合などが該当します。
### 例
次の例では、`test`というディレクトリが存在するか確認します。

```cs title="AliceScript"
using Alice.IO;

directory_exists("test");
```
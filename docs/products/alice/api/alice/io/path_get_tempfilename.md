---
title: path_get_tempFileName
summary: ユニークな名前を持つ0バイトの一時ファイルをディスクに作成し、そのファイルの絶対パスを取得します。
date : 2024-05-01
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### path_get_tempFileName()

ユニークな名前を持つ0バイトの一時ファイルをディスクに作成し、そのファイルの完全パスを取得します。

```cs title="AliceScript"
namespace Alice.IO;
public string path_get_tempFileName();
```

|戻り値| |
|-|-|
|`string`|作成した一時ファイルへの絶対パス|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 説明
この関数は、一時ファイルを作成し、そのパスを返します。
一時ファイルは、`path_get_tempPath`の戻り値にあるユーザーの一時ディレクトリに作成します。

Windowsでこの関数を呼び出した場合、作成された一時ファイルを削除せずに65535個以上のファイルを作成した場合に例外が発生します。その他のOSでは、この例外は発生しません。

### 例
次の例では、一時ファイルを作成してそのファイルに書き込んでいます。

```cs title="AliceScript"
using Alice.IO;

string tmp = path_get_tempPath();
file_append_text(tmp, "Hello,World");
```
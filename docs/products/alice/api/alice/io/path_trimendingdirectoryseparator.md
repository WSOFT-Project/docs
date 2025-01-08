---
title: path_trimEndingDirectorySeparator
summary: 指定したパスの末尾にあるディレクトリの区切り文字を削除します。
date : 2024-05-01
mt_type: function
mt_title: path_trimEndingDirectorySeparator(string)
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### path_trimEndingDirectorySeparator(string)

指定したパスの末尾にあるディレクトリの区切り文字を削除します。

```cs title="AliceScript"
namespace Alice.IO;
public string path_trimEndingDirectorySeparator(string path);
```

|引数| |
|-|-|
|`path`|調べるパス|

|戻り値| |
|-|-|
|`string`|`path`の末尾にディレクトリの区切り文字が含まれている場合はそれを削除したパス、それ以外の場合は`path`|

???note "対応: Alice3.0以降、AliceScriptとLosettaのみ"
    |対応||
    |---|---|
    |AliceScript|3.0、4|
    |AliceSister|該当なし|
    |Losetta|0.10、0.11|

    この関数はAliceSisterでは実装されていません。

    実装されていない環境では`0x034 NOT_IMPLEMENTED`例外がスローされます。

### 例
次の例では、ファイルパスの末尾の区切り文字を削除しています。

```cs title="AliceScript"
using Alice.IO;

print(path_trimEndingDirectorySeparator("dir\\subdir\\"));
//出力: dir\subdir
```
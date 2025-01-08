---
title: path_isPathFullyQualified
summary: 指定されたパスが、絶対パスかを示す値を取得します。
date : 2024-05-01
mt_type: function
mt_title: path_isPathFullyQualified(string)
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### path_isPathFullyQualified(string)

指定されたパスが、絶対パスかを示す値を取得します。

```cs title="AliceScript"
namespace Alice.IO;
public bool path_isPathFullyQualified(string path);
```

|引数| |
|-|-|
|`path`|調べるパス|

|戻り値| |
|-|-|
|`string`|パスが絶対パスの場合は`true`、それ以外の場合は`false`|

???note "対応: AliceScript RC2以降、AliceScriptとLosettaのみ"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|該当なし|
    |Losetta|0.8、0.9、0.10、0.11|

    この関数はAliceSisterでは実装されていません。

    実装されていない環境では`0x034 NOT_IMPLEMENTED`例外がスローされます。

### 説明
この関数は、指定されたパスが、絶対パスかを示す値を取得します。

また、`path`には必ずしも存在するファイルやディレクトリへのパスを指定する必要はありません。

### 例
次の例では、いくつかのパスが絶対パスかを調べています。

```cs title="AliceScript"
using Alice.IO;

print(path_isPathFullyQualified("C:\\Directory\\test.txt"));
//出力例: true

print(path_isPathFullyQualified("test.txt"));
//出力例: false
```
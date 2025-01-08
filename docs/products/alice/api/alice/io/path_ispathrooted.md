---
title: path_isPathRooted
summary: ファイルパスにルートが含まれているかを示す値を取得します。
date : 2024-05-01
mt_type: function
mt_title: path_isPathRooted(string)
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### path_isPathRooted(string)

ファイルパスにルートが含まれているかを示す値を取得します。

```cs title="AliceScript"
namespace Alice.IO;
public bool path_isPathRooted(string path);
```

|引数| |
|-|-|
|`path`|調べるパス|

|戻り値| |
|-|-|
|`string`|パスにルートが含まれている場合は`true`、それ以外の場合は`false`|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 説明
この関数は、指定されたパスがルートを含んでいるかを調べます。
「ルートを含む」とは、絶対パスであるということではありません。ルートパスには相対パスを含むこともできます。たとえば、Windowsでは`C:\Directory\test.txt`がルートを含んでいるのはもちろんのこと、`C:test.txt`もルートを含んでいると判断されます。もし、絶対パスであるかを確認したい場合は[path_isPathFullyQualified](./path_ispathfullyqualified.md)を使用してください。

`path`には必ずしも存在するファイルやディレクトリへのパスを指定する必要はありません。

### 例
次の例では、いくつかのパスがルートを含んでいるかを調べています。

```cs title="AliceScript"
using Alice.IO;

print(path_isPathRooted("C:test.txt"));
//出力例: true

print(path_isPathRooted("test.txt"));
//出力例: false
```
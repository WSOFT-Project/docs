---
title: path_get_directoryName
summary: 指定したパスのディレクトリ名を取得します。
date : 2024-05-01
mt_type: function
mt_title: path_get_directoryName(string)
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### path_get_directoryName(string)

指定したパスのディレクトリ名を取得します。

```cs title="AliceScript"
namespace Alice.IO;
public string path_get_directoryName(string path);
```

|引数| |
|-|-|
|`path`|調べるパス|

|戻り値| |
|-|-|
|`string`|`path`が所属するディレクトリへのパス。ただし、`path`がルートディレクトリを示しているか`null`の場合は`null`。|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 説明
この関数は、`path`が所属するディレクトリへのパスを返します。
たとえば、`C:\Directory\SubDirectory\test.txt`をこの関数に渡すと、`C:\Directory\SubDirectory`が返ります。それをもう一度この関数に渡すと、`C:\Directory`が返ります。`path`には必ずしも存在するファイルやディレクトリへのパスを指定する必要はありません。

この関数では、`file:`から始まる形式のパスを使用することはできません。

### 例
次の例では、`test.txt`が所属するディレクトリ名を表示しています。

```cs title="AliceScript"
using Alice.IO;

print(path_get_directoryName("dir\\test.txt"));
//出力: dir
```
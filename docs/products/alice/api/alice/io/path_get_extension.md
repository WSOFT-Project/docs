---
title: path_get_extension
summary: 指定したパスの拡張子を取得します。
date : 2024-05-01
mt_type: function
mt_title: path_get_extension(string)
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### path_get_extension(string)

指定したパスの拡張子を取得します。

```cs title="AliceScript"
namespace Alice.IO;
public string path_get_extension(string path);
```

|引数| |
|-|-|
|`path`|調べるパス|

|戻り値| |
|-|-|
|`string`|指定したパスの拡張子(ピリオド含む)。ただし、`path`が拡張子を持たない場合、空文字列を返します。|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 説明
この関数は、`path`の末尾からピリオドを検索することで、パスの拡張子を検索します。
このため、`text.tar.gz`のようなファイル名をこの関数に渡すと、`.gz`を返します。

`path`には必ずしも存在するファイルやディレクトリへのパスを指定する必要はありません。

### 例
次の例では、`test.txt`の拡張子を表示しています。

```cs title="AliceScript"
using Alice.IO;

print(path_get_extension("test.txt"));
//出力: .txt
```
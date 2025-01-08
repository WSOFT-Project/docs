---
title: path_has_extension
summary: 指定されたパスが、拡張子を含んでいるかを示す値を取得します。
date : 2024-05-01
mt_type: function
mt_title: path_has_extension(string)
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### path_has_extension(string)

指定されたパスが、拡張子を含んでいるかを示す値を取得します。

```cs title="AliceScript"
namespace Alice.IO;
public bool path_has_extension(string path);
```

|引数| |
|-|-|
|`path`|調べるパス|

|戻り値| |
|-|-|
|`string`|パスが拡張子を含んでいる場合は`true`、それ以外の場合は`false`|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 説明
この関数は、指定されたパスが、拡張子を含んでいるかを示す値を取得します。
ただし、パスの末尾にピリオドがある場合、拡張子とはみなされません。
また、`path`には必ずしも存在するファイルやディレクトリへのパスを指定する必要はありません。

### 例
次の例では、いくつかのパスが拡張子を含んでいるかを調べています。

```cs title="AliceScript"
using Alice.IO;

print(path_endsInDirectorySeparator("test.txt"));
//出力例: true

print(path_endsInDirectorySeparator("test"));
//出力例: false
```
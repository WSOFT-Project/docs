---
title: path_endsInDirectorySeparator
summary: 指定されたパスが、ディレクトリの区切り文字で終了するかを示す値を取得します。
date : 2024-05-01
mt_type: function
mt_title: path_endsInDirectorySeparator(string)
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### path_endsInDirectorySeparator(string)

指定されたパスが、ディレクトリの区切り文字で終了するかを示す値を取得します。

```cs title="AliceScript"
namespace Alice.IO;
public bool path_endsInDirectorySeparator(string path);
```

|引数| |
|-|-|
|`path`|調べるパス|

|戻り値| |
|-|-|
|`string`|パスがディレクトリの区切り文字で終わる場合は`true`、それ以外の場合は`false`|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
次の例では、いくつかのパスがディレクトリの区切り文字で終わるかを調べています。

```cs title="AliceScript"
using Alice.IO;

print(path_endsInDirectorySeparator("C:\\"));
//出力例: true

print(path_endsInDirectorySeparator("C:\\Windows"));
//出力例: false
```
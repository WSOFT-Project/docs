---
title: path_get_pathRoot
summary: 指定したパスから、ルートディレクトリを取得します。
date : 2024-05-01
mt_type: function
mt_title: path_get_pathRoot(string)
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### path_get_pathRoot(string)

指定したパスから、ルートディレクトリを取得します。

```cs title="AliceScript"
namespace Alice.IO;
public string path_get_pathRoot(string path);
```

|引数| |
|-|-|
|`path`|調べるパス|

|戻り値| |
|-|-|
|`string`|指定したパスが所属するルートディレクトリ。ただし、`path`にルートディレクトリの情報が含まれていない場合は空文字列。また`path`が事実上空の場合は`null`|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 説明
この関数は、指定したパスの所属するルートディレクトリを取得します。
`path`には必ずしも存在するファイルやディレクトリへのパスを指定する必要はありません。

`path`が次のいずれかの場合、パスは事実上空とみなされ、この関数は`null`を返します。

- Windowsで`path`が`null`か、[string.IsEmptyOrWhiteSpaces](../../string/isemptyorwhitespace.md)が`true`になる場合
- Unixで、`path`が`null`か、[string.IsEmptyOrNull](../../string/isemptyornull.md)が`true`になる場合

### 例
次の例では、指定したパスのルートディレクトリを表示しています。

```cs title="AliceScript"
using Alice.IO;

print(path_get_pathRoot("/tmp/test.txt"));
//出力: /
```
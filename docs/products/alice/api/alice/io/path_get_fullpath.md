---
title: path_get_fullPath
summary: 指定したパスの絶対パスを取得します。
date : 2024-05-01
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### path_get_fullPath(string)

指定したパスの絶対パスを取得します。

```cs title="AliceScript"
namespace Alice.IO;
public string path_get_fullPath(string path);
```

|引数| |
|-|-|
|`path`|調べるパス|

|戻り値| |
|-|-|
|`string`|`path`の絶対パス|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 説明
`path`が相対パスの場合、この関数はカレントディレクトリに基づく絶対パスを返します。
カレントディレクトリは、アプリケーションの実行時に変わる可能性があるため、この関数による戻り値を事前に決定することはできません。

`path`には必ずしも存在するファイルやディレクトリへのパスを指定する必要はありません。
ただし、`path`が指し示すファイルやディレクトリが存在する場合、`path`にパス情報を取得するためのアクセス許可が必要です。**Pathから始まるほとんどの関数とは異なり、この関数はファイルシステムにアクセスすることにご注意ください。**

### 例
次の例では、`test.txt`の絶対パスを表示しています。

```cs title="AliceScript"
using Alice.IO;

print(path_get_fullPath("test.txt"));
```
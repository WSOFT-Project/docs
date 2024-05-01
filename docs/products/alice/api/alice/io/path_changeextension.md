---
title: path_changeExtension
summary: パスが示すファイルの拡張子を変更します。
date : 2024-05-01
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### path_changeExtension(string,string)

パスが示すファイルの拡張子を変更します。

```cs title="AliceScript"
namespace Alice.IO;
public string path_changeExtension(string path, string extension);
```

|引数| |
|-|-|
|`path`|変更したいパス|
|`extension`|変更後の拡張子|

|戻り値| |
|-|-|
|`string`|`path`の拡張子が`extension`に変更された新しいパス|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 説明

この関数は、パスが示すファイルの拡張子を変更します。
拡張子とは、ファイル名末尾の`.`から始まる部分です。
`path`には必ずしも存在するファイルやディレクトリへのパスを指定する必要はありません。

`extension`は、先頭にピリオドをつけてもつけなくても構いません。
また、`extension`に空文字列や`null`を指定すると、拡張子が削除された新しいパスを返します。

### 例
次の例では、`test.txt`の拡張子を`.bin`に変更したパスを表示しています。

```cs title="AliceScript"
using Alice.IO;

string newName = path_changeExtension("test.txt",".bin");
print(newName);
//出力: test.bin
```
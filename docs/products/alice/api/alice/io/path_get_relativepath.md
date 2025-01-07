---
title: path_get_relativePath
summary: あるパスから指定したパスの相対パスを取得します。
date : 2024-05-01
mt_type: function
mt_title: path_get_relativePath(string,string)
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### path_get_relativePath(string,string)

あるパスから指定したパスの相対パスを取得します。

```cs title="AliceScript"
namespace Alice.IO;
public string path_get_relativePath(string relativeTo,string path);
```

|引数| |
|-|-|
|`relativeTo`|相対パスを求める基準となるパス。このパスは常にディレクトリとみなされます。|
|`path`|相対パスを取得するパス|

|戻り値| |
|-|-|
|`string`|`path`の`relativeTo`を基準とした相対パス。ただし、`path`と`relativeTo`が同じルートディレクトリに所属していない場合は`path`。|

???note "対応: AliceScript RC2以降、AliceScriptとLosettaのみ"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|該当なし|
    |Losetta|0.8、0.9、0.10、0.11|

    この関数はAliceSisterでは実装されていません。

    実装されていない環境では`0x034 NOT_IMPLEMENTED`例外がスローされます。


### 例
次の例では、`/tmp/test.txt`の`/tmp/sub`からみた相対パスを表示しています。

```cs title="AliceScript"
using Alice.IO;

print(path_get_fullPath("/tmp/sub", "/tmp/test.txt"));
//出力: ../test.txt
```
---
title: path_join
summary: 複数の文字列をひとつのパスに結合します。
date : 2024-05-01
mt_type: function
mt_title: path_join(params string)
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### path_join(params string)

複数の文字列をひとつのパスに結合します。

```cs title="AliceScript"
namespace Alice.IO;
public string path_join(params string paths[]);
```

|引数| |
|-|-|
|`paths`|パスを構成する文字列。この引数はいくつでも指定できます。|

|戻り値| |
|-|-|
|`string`|結合されたパス|

???note "対応: AliceScript RC2以降、AliceScriptとLosettaのみ"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|該当なし|
    |Losetta|0.8、0.9、0.10、0.11|

    この関数はAliceSisterでは実装されていません。

    実装されていない環境では`0x034 NOT_IMPLEMENTED`例外がスローされます。

### 説明

`paths`のいずれかの要素がディレクトリの区切り文字で終わらない場合、自動的に区切り文字を挿入します。
また、長さが0の文字列は、結合から除外されます。

[path_combine](./path_combine.md)とは異なり、この関数は結合されたパスを絶対パスにしようとしません。このため、`paths`内の最初以外のパスが絶対パスでも、以前のパスを破棄しません。

### 例
次の例では、パスを連結しています。

```cs title="AliceScript"
using Alice.IO;

print(path_join("C:","Directory","SubDirectory"));
//出力: C:\Directory\SubDirectory
```
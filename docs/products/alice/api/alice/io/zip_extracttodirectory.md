---
title: zip_extractToDirectory
summary: 指定したZipアーカイブのすべてのファイルをディレクトリに展開します。
date : 2024-05-01
mt_type: function
mt_title: zip_extractToDirectory(string,string)
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### zip_extractToDirectory(string,string)

指定したZipアーカイブのすべてのファイルをディレクトリに展開します。

```cs title="AliceScript"
namespace Alice.IO;
public void zip_extractToDirectory(string source, string dirName);
```

|引数| |
|-|-|
|`source`|展開するアーカイブへのパス|
|`dirName`|展開先のディレクトリへのパス|

???note "対応: Alice2.0以降"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0|
    |AliceSister|2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.9、0.10|

### 説明

この関数は、指定したZipアーカイブのすべてのファイルをディレクトリに展開します。
宛先ディレクトリがすでに存在する場合は例外が発生します。

### 例
次の例では、`test.zip`を展開します。

```cs title="AliceScript"
using Alice.IO;

zip_extractToDirectory("test.zip", "test");
```
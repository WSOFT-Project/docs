---
title: zip_createFromDirectory
summary: 指定したディレクトリからZipアーカイブを作成します。
date : 2024-05-01
mt_type: function
mt_title: zip_createFromDirectory(string,string)
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### zip_createFromDirectory(string,string)

指定したディレクトリからZipアーカイブを作成します。

```cs title="AliceScript"
namespace Alice.IO;
public void zip_createFromDirectory(string source, string fileName);
```

|引数| |
|-|-|
|`source`|アーカイブするディレクトリのパス|
|`fileName`|作成するアーカイブのパス|

???note "対応: Alice2.0以降"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0|
    |AliceSister|2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.9、0.10|

### 説明

この関数は、指定したディレクトリからZipアーカイブを作成します。
このとき、ファイルシステムの構造はアーカイブに保持されるため、サブディレクトリを含むすべてのファイルとディレクトリがアーカイブされます。また、ディレクトリが空の場合は空のアーカイブが作成されます。

### 例
次の例では、`test`というディレクトリからZipアーカイブを作成します。

```cs title="AliceScript"
using Alice.IO;

zip_createFromDirectory("test", "test.zip");
```
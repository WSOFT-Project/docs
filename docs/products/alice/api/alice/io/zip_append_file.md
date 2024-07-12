---
title: zip_append_file
summary: 指定したZipアーカイブにファイルを追加します。
date : 2024-05-01
mt_type: function
mt_title: zip_append_file(string,string,string)
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### zip_append_file(string,string,string)

指定したZipアーカイブにファイルを追加します。

```cs title="AliceScript"
namespace Alice.IO;
public void zip_append_file(string archivePath, string sourcePath, string fileName);
```

|引数| |
|-|-|
|`archivePath`|追加するアーカイブへのパス|
|`sourcePath`|追加するファイルへのパス|
|`fileName`|Zipアーカイブ内でのファイルの名前|

???note "対応: Alice2.0以降"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0|
    |AliceSister|2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.9、0.10|

### 説明

この関数は、指定したZipアーカイブにファイルを追加します。
すでに同じ名前のファイルがZipアーカイブ内に存在する場合は、同じ名前でもうひとつエントリが作成されます。

追加するファイルのサイズは、最大で`2147483647`バイト(およそ2.14ギガバイト)以内である必要があります。

### 例
次の例では、`test.zip`に`test.txt`をそのままの名前で追加します。

```cs title="AliceScript"
using Alice.IO;

zip_append_file("test.zip", "test.txt", "test.txt");
```
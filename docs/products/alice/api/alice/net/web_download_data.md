---
title: web_download_file
summary: 指定したURIを持つリソースをダウンロードします
date : 2021-08-26
---
### 定義
名前空間:Alice.Net / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

指定したURIを持つリソースをダウンロードします。

```cs title="AliceScript"
namespace Alice.Net;
byte[] web_download_data(string uri);
```

|引数| |
|-|-|
|`uri`| データのダウンロード元のURL|

|戻り値| |
|-|-|
|`byte[]`| リソースからの応答の本文|

### 例
次の例では、`http://localhost/download`にあるリソースを`download.bin`に保存します。

```cs title="AliceScript"
using Alice.Net;
using Alice.IO;

var data = web_download_data("http://localhost/download");
file_write_data("download.bin",data);
```
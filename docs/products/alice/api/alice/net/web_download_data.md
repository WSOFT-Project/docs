---
title: web_download_data
summary: 指定したURIを持つリソースを取得します
date : 2021-08-26
mt_type: function
mt_title: web_download_data(string)
---

### 定義
名前空間: Alice.Net<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Net.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Net.cs)

#### web_download_data(string)

指定したURIを持つリソースを取得します。

```cs title="AliceScript"
namespace Alice.Net;
public bytes web_download_data(string uri);
```

|引数| |
|-|-|
|`uri`| データのダウンロード元のURL|

|戻り値| |
|-|-|
|`bytes`| リソースからの応答の本文|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
次の例では、`http://localhost/download`にあるリソースを`download.bin`に保存します。

```cs title="AliceScript"
using Alice.Net;
using Alice.IO;

var data = web_download_data("http://localhost/download");
file_write_data("download.bin",data);
```

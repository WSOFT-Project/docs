---
title: web_upload_data
summary: 指定したURIを持つリソースへバイト配列をアップロードして応答を受け取ります。
date : 2021-08-26
mt_type: function
mt_title: web_upload_data(string,bytes)
---

### 定義
名前空間: Alice.Net<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Net.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Net.cs)

#### web_upload_data(string,bytes)

指定したURIを持つリソースへバイト配列をアップロードして応答を受け取ります。

```cs title="AliceScript"
namespace Alice.Net;
public bytes web_upload_data(string uri, bytes data);
```

|引数| |
|-|-|
|`uri`| リクエストを送信するリソースのURI|
|`data`| リソースに送信するデータバッフアー|

|戻り値| |
|-|-|
|`bytes`| リソースからの応答の本文|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 例
次の例では、`upload.bin`というファイルの内容を`http://localhost/upload`にアップロードし、サーバーからの応答を`response.bin`に保存します。

```cs title="AliceScript"
using Alice.Net;
using Alice.IO;

//アップロード先のURL
string upload_uri = "http://localhost/upload";
//アップロードするファイル
string upload_filename = "upload.bin";
//応答をダウンロードするファイル
string response_filename = "response.bin";

var data = file_read_data(upload_filename);
//指定したURLにPOSTリクエストを送りアップロード
var response = web_upload_data(upload_uri,data);

//サーバーからの応答をファイルに書き出す
file_write_data(response_filename,response);
```
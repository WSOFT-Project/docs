---
title: web_upload_data
summary: 指定したURIを持つリソースへバイト配列をアップロードして応答を受け取ります。
date : 2021-08-26
---
### 定義
名前空間:Alice.Net / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

指定したURIを持つリソースへバイト配列をアップロードして応答を受け取ります。

```cs title="AliceScript"
namespace Alice.Net;
byte[] web_upload_data(string uri,byte[] data);
```

|引数| |
|-|-|
|`uri`| リクエストを送信するリソースのURI|
|`data`| リソースに送信するデータバッフアー|

|戻り値| |
|-|-|
|`byte[]`| リソースからの応答の本文|

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
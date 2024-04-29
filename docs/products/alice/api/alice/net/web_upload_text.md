---
title: web_upload_text
summary: 指定したURIを持つリソースへ文字列をアップロードして応答を受け取ります。
date : 2021-08-26
---
### 定義
名前空間:Alice.Net / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

指定したURIを持つリソースへ文字列をアップロードして応答を受け取ります。

```cs title="AliceScript"
namespace Alice.Net;
public string web_upload_text(string uri,string data);
```

|引数| |
|-|-|
|`uri`| リクエストを送信するリソースのURI|
|`data`| リソースに送信する文字列|

|戻り値| |
|-|-|
|`string`| リソースからの応答の本文を表す文字列|

### 例
次の例では、`Hello,Server`を`http://localhost/upload`にアップロードし、サーバーからの応答を表示します。

```cs title="AliceScript"
using Alice.Net;
using Alice.IO;

//アップロード先のURL
string upload_uri = "http://localhost/upload";
//アップロードする文字列
string upload_text = "Hello,Server";

//指定したURLにPOSTリクエストを送りアップロード
var response = web_upload_text(upload_uri,upload_text);

//サーバーからの応答を表示
print(response);
```
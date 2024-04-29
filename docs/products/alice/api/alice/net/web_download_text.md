---
title: web_download_text
summary: 指定したURIを持つリソースを文字列形式でダウンロードします。
date : 2021-08-26
---
### 定義
名前空間:Alice.Net / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

#### web_download_data(string)

指定したURIを持つリソースを文字列形式でダウンロードします。

```cs title="AliceScript"
namespace Alice.Net;
public string web_download_data(string uri);
```

|引数| |
|-|-|
|`uri`| データのダウンロード元のURL|

|戻り値| |
|-|-|
|`string`| リソースからの応答の本文|

### 例
次の例では、`http://localhost/download`にあるリソースを表示します。

```cs title="AliceScript"
using Alice.Net;

var data = web_download_text("http://localhost/download");
print(data);
```
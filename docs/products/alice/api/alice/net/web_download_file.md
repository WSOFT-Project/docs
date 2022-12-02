---
title: web_download_file
summary: 指定したURIを持つリソースをローカルファイルにダウンロードします
date : 2021-08-26
---
### 定義
名前空間:Alice.Net / アセンブリ: AliceScript.dll / サポート: AliceScript1

属性: 関数

指定したURIを持つリソースをローカルファイルにダウンロードします。

```cs title="AliceScript"
namespace Alice.Net;
void web_download_file(string uri,string filename);
```

|引数| |
|-|-|
|`uri`| データのダウンロード元のURL|
|`filename`| ダウンロード先のファイルパス|

### 例
次の例では、`http://localhost/download`にあるリソースを`download.bin`に保存します。

```cs title="AliceScript"
import "Alice.Net";
import "Alice.IO";

web_download_file("http://localhost/download","download.bin");
```
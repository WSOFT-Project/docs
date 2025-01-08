---
title: web_download_text
summary: 指定したURIを持つリソースを文字列形式でダウンロードします。
date : 2021-08-26
mt_type: function
mt_title: web_download_text(string)
---

### 定義
名前空間: Alice.Net<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Net.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Net.cs)

#### web_download_text(string)

指定したURIを持つリソースを文字列形式でダウンロードします。

```cs title="AliceScript"
namespace Alice.Net;
public string web_download_text(string uri);
```

|引数| |
|-|-|
|`uri`| データのダウンロード元のURL|

|戻り値| |
|-|-|
|`string`| リソースからの応答の本文|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 例
次の例では、`http://localhost/download`にあるリソースを表示します。

```cs title="AliceScript"
using Alice.Net;

var data = web_download_text("http://localhost/download");
print(data);
```
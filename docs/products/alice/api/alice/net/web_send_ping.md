---
title: web_send_ping
summary: 指定したコンピューターping要求を送信し、適切な応答が返って来たかどうかを表す値を取得します。
date : 2021-08-26
mt_type: function
mt_title: web_send_ping(string,number)
---

### 定義
名前空間: Alice.Net<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Net.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Net.cs)

#### web_send_ping(string,number)

指定したURIを持つリソースを文字列形式でダウンロードします。

```cs title="AliceScript"
namespace Alice.Net;
public bool web_send_ping(string target, number timeout=5000);
```

|引数| |
|-|-|
|`target`| 要求の送信先となるコンピューター|
|`timeout`| 要求がタイムアウトするまでの時間（ミリ秒）。既定値は5000です。|

|戻り値| |
|-|-|
|`bool`| コンピューターから適切な応答が返ってくればTrue、それ以外の場合はFalse。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 例
次の例では、`localhost`にping要求を送信し、成功したかどうかを表示します。

```cs title="AliceScript"
using Alice.Net;

bool success = web_send_ping("localhost");

print("localhostへのping要求が{0}しました。",success ? "成功" : "失敗");
```
---
title: web_send_ping
summary: 指定したコンピュータにping要求を送信し、適切な応答が返って来たかどうかを表す値を取得します。
date : 2021-08-26
---
### 定義
名前空間:Alice.Net / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

指定したURIを持つリソースを文字列形式でダウンロードします。

```cs title="AliceScript"
namespace Alice.Net;
bool web_send_ping(string target,number timeout=5000);
```

|引数| |
|-|-|
|`target`| 要求の送信先となるコンピューター|
|`timeout`| 要求がタイムアウトするまでの時間（ミリ秒）。規定値は5000です。|

|戻り値| |
|-|-|
|`bool`| コンピューターから適切な応答が返ってくればTrue、それ以外の場合はFalse。|

### 例
次の例では、`localhost`にping要求を送信し、成功したかどうかを表示します。

```cs title="AliceScript"
using Alice.Net;

bool success = web_send_ping("localhost");

print("localhostへのping要求が{0}しました。",success ? "成功" : "失敗");
```
---
title: interop_getType
summary: 指定した.NETオブジェクトを表すオブジェクトを取得します
date : 2024-01-08
---

### 定義
名前空間:Alice.Interop / アセンブリ : Losetta.Runtime.dll / サポート: Alice3.0

属性: 関数

指定した.NETオブジェクトを表すオブジェクトを取得します

```cs title="AliceScript"
namespace Alice.Interop;
public Type interop_getType(string typeName, string asmName = null, string asmLocate = null);
```

|引数| |
|-|-|
|`typeName`|取得するオブジェクトの完全修飾名|
|`asmName`|取得するオブジェクトの存在するアセンブリ名。規定値は`null`です。|
|`asmLocate`|取得するオブジェクトが存在するアセンブリへのパス。規定値は`null`です。|

|戻り値| |
|---|---|
|[Type](../interpreter/type/index.md)|指定した.NETオブジェクトを表すインスタンス|

### 説明
この関数を使用すると、.NETオブジェクトを表す[Type](../interpreter/type/index.md)を取得できます。取得できるのは.NETのオブジェクトインスタンスではなく、.NETの型を表すオブジェクトである点にご注意ください。

`asmName`は、取得するオブジェクトがSAIMの実装に含まれるクラス以外の場合に指定が必要です。また、`asmLocate`は、取得するオブジェクトがまだ読み込まれていないアセンブリに存在する場合に指定が必要です。
### 例
次の例では、.NETの[Complex型](https://learn.microsoft.com/ja-jp/dotnet/api/system.numerics.complex)のインスタンスを作成します。

```cs title="AliceScript"
using Alice.Interop;

// Complex型の情報をcomplexに代入する
var complex = interop_GetType("System.Numerics.Complex","System.Runtime.Numerics");

// 代入した情報を使ってComplex型を初期化する
var x = new complex(1,2);
```

また、次の例はこの関数を使用して機能する簡単なTCPサーバーとTCPクライアントアプリです。

```cs title="AliceScript"
// TCPサーバープログラム

using Alice.Interop;

string ip = "127.0.0.1";
number port = 8080;
string reply = "Connection OK.";
string dummy = "XXXXXXXXXXXXXXXX";

// コード内で使用する.NETオブジェクトを初期化できるようにする
var TcpListener = interop_GetType("System.Net.Sockets.TcpListener","System.Net.Sockets");
var IPAddress = interop_GetType("System.Net.IPAddress","System.Net.Primitives");

// ここからサーバー本体
var server = new TcpListener(IPAddress.Parse(ip), port);

server.Start();
print($"サーバーを {ip}:{port} で起動しました");

try
{
    while(true)
    {
        var client = server.AcceptTcpClient();
        print("クライアントが接続しました");

        var stream = client.GetStream();

        var bytes = dummy.GetBytes();
        var data = stream.Read(bytes, 0, bytes.Length);

        print(data.ToString());

        var response = reply.GetBytes();
        stream.Write(response, 0, response.Length);

        client.Close();

        print("クライアントとの接続を閉じました。");
    }
}
catch
{
    print("エラーが発生しました。");
}

server.Stop();
```

```cs title="AliceScript"
// TCPクライアントプログラム

using Alice.Interop;

string ip = "127.0.0.1";
number port = 8080;
string reply = "Connection OK.";
string dummy = "XXXXXXXXXXXXXXXX";

// コード内で使用する.NETオブジェクトを初期化できるようにする
var TcpClient = interop_GetType("System.Net.Sockets.TcpClient","System.Net.Sockets");
var IPAddress = interop_GetType("System.Net.IPAddress","System.Net.Primitives");

// ここからクライアント本体
var client = new TcpClient(ip, port);
print($"サーバー: {ip}:{port} に接続しました");

var stream = client.GetStream();

print("サーバーに送信するメッセージを入力してください");
string message = read();

var data = message.GetBytes();
stream.Write(data, 0, data.Length);

var bytes = dummy.GetBytes();
var data = stream.Read(bytes, 0, stream.Length);

client.Close();
print("クライアントとの接続を閉じました。");
```
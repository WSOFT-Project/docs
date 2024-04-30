---
title: exec
summary: 別のプロセスを開始します。
date : 2023-12-30
---

### 定義
名前空間: Alice.Diagnostics<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Diagnostics.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Diagnostics.cs)

#### exec(string,bool,bool)

ファイル名を指定して別のプロセスを開始します。

```cs title="AliceScript"
namespace Alice.Diagnostics;
public Process exec(string fileName, bool waitForExit = true, bool useShell = false);
```

|引数| |
|-|-|
|`fileName`|開始したいプロセスの実行ファイルへのパス|
|`waitForExit`|プロセスが終了するまで待機する場合は`true`、それ以外の場合は`false`。規定値は`true`です。|
|`useShell`|プロセスの起動時にOSのシェルを使用する場合は`true`、それ以外の場合は`false`。規定値は`false`です。|

|戻り値| |
|-|-|
|`Process`|開始したプロセスの情報を表すオブジェクト|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

#### exec(string,string,bool,bool)

ファイル名と引数を指定して別のプロセスを開始します。

```cs title="AliceScript"
namespace Alice.Diagnostics;
public Process exec(string fileName, string arguments, bool waitForExit = true, bool useShell = false);
```

|引数| |
|-|-|
|`fileName`|開始したいプロセスの実行ファイルへのパス|
|`arguments`|プロセスの起動時に使用するコマンドライン引数|
|`waitForExit`|プロセスが終了するまで待機する場合は`true`、それ以外の場合は`false`。規定値は`true`です。|
|`useShell`|プロセスの起動時にOSのシェルを使用する場合は`true`、それ以外の場合は`false`。規定値は`false`です。|

|戻り値| |
|-|-|
|`Process`|開始したプロセスの情報を表すオブジェクト|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 説明

!!!important "重要"
    信頼できない入力値を使用してこの関数を呼び出すと、セキュリティ上のリスクが生じます。
    この関数は、信頼できる入力値のみを用いて呼び出してください。

この関数を使用してプロセスを開始することは、コマンドラインからファイル名と引数を指定して実行することに似ています。このため、`fileName`には必ず実行可能へのパスを表す必要はありません。たとえば、`.txt`ファイルを開くための既定のアプリケーションが`notepad.exe`に設定されているとすると、この関数のファイル名を`test.txt`で呼び出すとメモ帳が起動します。

### 例
次の例では、`notepad.exe`を起動し、ユーザーがアプリを閉じるまで待機します。

```cs title="AliceScript"
using Alice.Diagnostics;

exec("notepad.exe");
```

次の例では、`chrome.exe`を起動します。このとき、ユーザーがアプリを閉じるまで待機しません。

```cs title="AliceScript"
using Alice.Diagnostics;

exec("chrome.exe", false);
```

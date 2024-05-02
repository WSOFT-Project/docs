---
title: interop_loadLibrary
summary: 指定した.NETのライブラリを読み込み、エントリポイントを実行します。
date : 2024-05-02
---

### 定義
名前空間: Alice.Interop<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Interop.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Interop.cs)

#### interop_loadLibrary(string)

指定したパスにある.NETのライブラリを読み込み、エントリポイントを実行します。

```cs title="AliceScript"
namespace Alice.Interop;
public void interop_loadLibrary(string path);
```

|引数| |
|-|-|
|`path`|読み込むライブラリファイルへのパス|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

#### interop_loadLibrary(bytes)

指定したデータにある.NETのライブラリを読み込み、エントリポイントを実行します。

```cs title="AliceScript"
namespace Alice.Interop;
public void interop_loadLibrary(bytes assembly);
```

|引数| |
|-|-|
|`assembly`|読み込むライブラリファイルのデータを表すバイト列|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 説明
この関数は、.NETライブラリを動的に読み込み、ライブラリのエントリポイントを実行します。
読み込むライブラリは、AliceScriptの実装に応じたバージョンの.NETに向けてコンパイルされたものでかつ、ひとつ以上の`ILibrary`インターフェィスを実装している必要があります。
使用できるエントリポイントが存在しない場合でも、例外は発生しません。

ライブラリの読み込み中に発生した例外は`0x040 LIBRARY_EXCEPTION`または`0x01b FILE_NOT_FOUND`として報告されます。

### 例
次の例では、Win32APIで定義されている[MessageBox](https://learn.microsoft.com/en-us/windows/win32/api/winuser/nf-winuser-messagebox)関数を使用してメッセージボックスを表示します。

```cs title="AliceScript"
using Alice.Interop;

var msgBox = interop_getInvoker("MessageBox", "user32.dll", "INT", ["HWND", "LPCTSTR", "LPCTSTR", "UINT"], "MessageBoxW", true);

msgBox(0, "Hello,World!", "TestMessage", 0);
```
---
title: interop_getInvoker
summary: 指定したC-Style関数に対応するデリゲートを生成します
date : 2023-12-30
---

### 定義
名前空間:Alice.Interop / アセンブリ : Losetta.Runtime.dll / サポート: Alice3.0

属性: 関数

指定したC-Style関数に対応するデリゲートを生成します

```cs title="AliceScript"
namespace Alice.Interop;
public delegate interop_getInvoker(string procName, string libraryName, string returnType, array parameterTypes, string entryPoint = null, bool? useUnicode = null);
```

|引数| |
|-|-|
|`procName`|対象の関数の名前|
|`libraryName`|対象の関数が定義されているファイル名|
|`returnType`|関数の戻り値の型を表す文字列|
|`parameterTypes`|関数の引数の型を表す文字列を含む配列|
|`entryPoint`|対象の関数のエントリポイント。規定値は`null`で、これを指定した場合は`procName`が使用されます。|
|`useUnicode`|呼び出しにUnicodeを使用する場合は`true`、ANSIを使用する場合は`false`、自動判別する場合は`null`。規定値は`null`です。|

|戻り値| |
|---|---|
|`delegate`|指定したC-Style関数に対応するデリゲート|

### 説明
この関数を使用すると、ネイティブ関数を一度定義することなくデリゲートに格納できます。

`returnType`と`parameterTypes`に使用する文字列については、[マーシャリング](../../../interop/marshaling.md)を参照してください。

C-Style関数をAliceScriptで使用する方法については、[ネイティブ関数の呼び出し](../../../interop/call-native-functions.md)を参照してください。

対応する関数が見つからなかった場合は[0x004 COULDNT_FIND_VARIABLE](../../../exceptions/0x004.md) `外部に適切に定義された関数が見つかりませんでした`がスローされます。

### 例
次の例では、Win32APIで定義されている[MessageBox](https://learn.microsoft.com/en-us/windows/win32/api/winuser/nf-winuser-messagebox)関数を使用してメッセージボックスを表示します。

```cs title="AliceScript"
using Alice.Interop;

var msgBox = interop_getInvoker("MessageBox", "user32.dll", "INT", ["HWND", "LPCTSTR", "LPCTSTR", "UINT"], "MessageBoxW", true);

msgBox(0, "Hello,World!", "TestMessage", 0);
```
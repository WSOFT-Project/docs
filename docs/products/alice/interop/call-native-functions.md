---
title : ネイティブ関数の呼び出し
summary : この記事では、AliceScriptからWin32APIなどのネイティブライブラリを呼び出す方法について説明します。
date : 2023-09-25
---
<span class="badge bg-success">対応バージョン>=Alice3.0</span>

### 概要

AliceScriptからネイティブ関数(C-Style関数)を呼び出すことで、AliceScriptで使用できる範囲のAPIを超えてさまざまなAPIを呼び出すことができます。
まずは簡単な例をご覧ください。次の例では、Win32APIで定義されている[MessageBox](https://learn.microsoft.com/en-us/windows/win32/api/winuser/nf-winuser-messagebox)関数を使用してメッセージボックスを表示します。

```cs title="AliceScript"
// 呼び出したい機能を含むライブラリと関数
@libimport "user32.dll"
extern int MessageBox(HWND hwnd,LPCTSTR lpText,LPCTSTR lpCaption,UINT uType);

// 定義した関数を呼び出す
MessageBox(0,"Hello,World!","TestMessage",0);
```

この例は簡単ながら、ネイティブ関数を呼び出すために必要な要素をすべて含んでいます。

- `#libimport`指令を使用して、インタプリタに実際に関数が定義されているライブラリを読み込むよう指示します。
- `extern`から始まる関数定義では、ネイティブ関数名と**正確に同じ**名前と引数を持つ関数を定義しています。
- `MessageBox(...);`では、AliceScriptの関数と同じように関数を呼び出しています。

Linuxの場合でも同様です。次の例では、`getpid()`関数を呼び出して、現在のプロセスのIDを取得しています。

```cs title="AliceScript"
// 呼び出したい機能を含むライブラリと関数
@libimport "libc.so.6"
extern int getpid();

// 定義した関数を呼び出す
print(getpid());
```

### 変数名の省略
ネイティブ関数を呼び出すとき、本質的に変数名は不要な情報です。
そのため、変数名はなんでもよく、変数名を省略して型名のみを定義することでもネイティブ関数を定義できます。この場合でも、関数名と引数・戻り値の型、引数の個数は呼び出したい関数と一致する必要がある点に注意してください。次に例を示します。

```cs title="AliceScript"
#libimport "kernel32.dll"
extern bool Beep(DWORD,DWORD);
```

### 別名での定義
エントリポイントを使用することで、別名でネイティブ関数を定義できます。
次の例では、Win32APIの`MessageBox`関数を、AliceScriptの`MsgBox`関数として定義しています。

```cs title="AliceScript"
@libimport "user32.dll" , "MessageBox"
extern int MsgBox(HWND hwnd,LPCTSTR lpText,LPCTSTR lpCaption,UINT uType);

// 関数呼び出し
MsgBox(0,"Hello,World!","TestMessage",0);
```

### 文字コードの指定
AliceScriptからネイティブ関数に文字列をやり取りするとき、次に示すように一部のAPIではANSI(ナロー)形式とUnicode(ワイド)形式を受取る2種類の関数を公開しています。

#### ANSI形式
  - `char*`型に変換される(C++の1バイト文字列)
  - ASCII互換の文字コードを使用(たとえば、日本語ならShift-JIS)
  - WindowsAPIでは`MessageBoxA`など、エントリポイント名の末尾が**A**になっていることが多い
  - 指定するには`#libimport`の第三引数に`false`を渡す
#### Unicode形式
  - `wchar_t*`型に変換される(C++の2バイト文字列)
  - 文字コードにはUTF-16を使用
  - WindowsAPIでは`MessageBoxW`など、エントリポイント名の末尾が**W**になっていることが多い
  - 指定するには`#libimport`の第三引数に`true`を渡す

AliceScriptでは規定では、プラットフォームに応じて適切な文字コードを自動選択します。
また、明示的にネイティブ関数に文字列を渡すときに使用される文字コードを指定することもできます。

次の例では、ANSI形式を使用する`MessageBoxA`関数とUnicode形式を使用する`MessageBoxW`関数をそれぞれAliceScriptで定義しています。

```cs title="AliceScript"
// ANSI形式の関数の定義
@libimport "user32.dll" , null , false
extern int MessageBoxA(HWND hwnd,LPCTSTR lpText,LPCTSTR lpCaption,UINT uType);

// Unicode形式の関数の定義
@libimport "user32.dll" , null , true
extern int MessageBoxW(HWND hwnd,LPCWSTR lpText,LPCWSTR lpCaption,UINT uType);

// プラットフォームに応じて自動選択
@libimport "user32.dll" , null , null
extern int MessageBox(HWND hwnd,LPCTSTR lpText,LPCTSTR lpCaption,UINT uType);
```

### 型変換
C言語は、AliceScriptとは異なる型システムを持っているため、AliceScripとネイティブ関数の間で値のやり取りが必要になる場合は型変換が行われます。
ネイティブ関数の定義では`int`や`HWND`などの見慣れない型キーワードが使用されていますが、これはそのためです。

AliceScriptの型との相互変換について詳しく知るには、[マーシャリング](./marshaling.md)を参照してください。

### ネイティブ関数の動的定義
`Interop_GetInvoker`関数を使用することで、ネイティブ関数をデリゲートの形式で動的に定義し、使用できます。次の例を参照してください。

```cs title="AliceScript"
using Alice.Interop;

// ネイティブ関数からデリゲートを作成
var beep = Interop_GetInvoker("Beep","kernel32.dll","bool",["dword","dword"]);

// ドの音を鳴らしてみる
beep(262,1000);

// もちろんメソッドでも呼び出し可能
beep.Invoke(262,1000);
```
---
title : ネイティブ関数の呼び出し
summary : この記事では、AliceScriptからWin32APIなどのネイティブライブラリを呼び出す方法について説明します。
date : 2023-09-25
---
<span class="badge bg-success">対応バージョン>=Alice3.0</span>

AliceScriptからネイティブ関数(C-Style関数)を呼び出すことで、AliceScriptで使用できる範囲のAPIを超えてさまざまなAPIを呼び出すことができます。
まずは簡単な例をご覧ください。次の例では、Win32APIで定義されている[MessageBox](https://learn.microsoft.com/en-us/windows/win32/api/winuser/nf-winuser-messagebox)関数を使用してメッセージボックスを表示します。

```cs title="AliceScript"
// 呼び出したい機能を含むライブラリと関数
#libimport "user32.dll"
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
#libimport "libc.so.6"
extern int getpid();

// 定義した関数を呼び出す
print(getpid());
```

### 型変換
C言語は、AliceScriptとは異なる型システムを持っているため、AliceScripとネイティブ関数の間で値のやり取りが必要になる場合は型変換が行われます。
ネイティブ関数の定義では`int`や`HWND`などの見慣れない型キーワードが使用されていますが、これはそのためです。

AliceScriptの型との相互変換について詳しく知るには、[マーシャリング](../interop/marshalling.md)を参照してください。

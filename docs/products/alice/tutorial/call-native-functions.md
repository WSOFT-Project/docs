---
title : ネイティブ関数の呼び出し
summary : この記事では、AliceScriptからWin32APIなどのネイティブライブラリを呼び出す方法について説明します。
date : 2023-09-25
---
<span class="badge bg-success">対応バージョン>=Alice3.0</span>

AliceScriptからネイティブ関数を呼び出すことで、AliceScriptで使用できる範囲のAPIを超えてさまざまなAPIを呼び出すことができます。
まずは簡単な例をご覧ください。次の例では、Win32APIで定義されている[MessageBox](https://learn.microsoft.com/en-us/windows/win32/api/winuser/nf-winuser-messagebox)関数を使用してメッセージボックスを表示します。

```cs title="AliceScript"
// 呼び出したい機能を含むライブラリと関数
#libimport "user32.dll"
extern int MessageBox(HWND hwnd,LPCTSTR lpText,LPCTSTR lpCaption,UINT uType);

// 定義した関数を呼び出す
MessageBox(0,"Hello,World!","TestMessage",0);
```

---
title : マーシャリング
summary : この記事では、AliceScriptと.NETやネイティブの型と相互に変換するプロセスについて説明します。
date : 2023-10-02
---

.METやネイティブコードは、AliceScriptとは異なる型システムを持っているため、AliceScripとネイティブ関数の間で値のやり取りが必要になる場合は型変換が行われます。
SAIMのマーシャリングシステムは、変換先の型や変換元の型を考慮して、適切な処理を実行します。
ネイティブ関数の定義で`int`や`HWND`などの見慣れない型キーワードが使用されていますが、これはそのためです。

以下に、AliceScriptの型と、対応する型キーワード、対応するネイティブ型を示します。

|型キーワード|AliceScriptの型|C#の型|ネイティブ型|
|--|--|--|--|
|`void`|該当なし|`System.Void`|Win32の`VOID`型|
|`HDC`、`HWND`、`HANDLE`、`IntPtr`|`number`†1|`System.IntPtr`|`intptr_t`|
|`UIntPtr`|`number`|`System.UIntPtr`†1†2|`uintptr_t`|
|`INT8`、`SCHAR`、`BOOLEAN`|`number`|`System.SByte`|`int8_t`|
|`UCHAR`、`CHAR`、`BYTE`|`number`|`System.Byte`|`uint8_t`|
|`INT16`、`SHORT`|`number`|`System.Int16`|`int16_t`|
|`UINT16`、`USHORT`、`WORD`|`number`|`System.UInt16`|`uint16_t`|
|`INT32`、`INT`、`LONG32`|`number`|`System.Int32`|`int32_t`|
|`UINT32`、`UINT`、`ULONG32`、`DWORD`|`number`|`System.UInt32`|`uint32_t`|
|`INT64`、`LONG`、`LONG64`、`LONGLONG`|`number`|`System.Int64`|`int64_t`|
|`UINT64`、`ULONG`、`ULONG64`、`ULONGLONG`|`number`|`System.UInt64`|`uint64_t`|
|`FLOAT`、`SINGLE`|`number`|`System.Short`|Win32の`SINGLE`型|
|`DOUBLE`|`number`|`System.Double`|Win32の`DOUBLE`型|
|`BOOL`|`bool`|`System.Boolean`|Win32の`BOOL`型(実体は`INT`)|
|`LPSTR`、`LPTSTR`、`LPCSTR`、`LPCTSTR`、`LPCWSTR`、`STRING`|`string`|`System.String`|`char*`または`char16_t*`(文字コードによる)|

- **†1** 小数部は切り捨て
- **†2** 0以上の値のみ。それ未満はエラー

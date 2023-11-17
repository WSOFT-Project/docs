---
title : マーシャリング
summary : この記事では、AliceScriptと.NETやネイティブの型と相互に変換するプロセスについて説明します。
date : 2023-10-02
---

.METやネイティブコードは、AliceScriptとは異なる型システムを持っているため、AliceScripとネイティブ関数の間で値のやり取りが必要になる場合は型変換が行われます。
SAIMのマーシャリングシステムは、変換先の型や変換元の型を考慮して、適切な処理を実行します。
ネイティブ関数の定義で`int`や`HWND`などの見慣れない型キーワードが使用されていますが、これはそのためです。

以下に、AliceScriptの型と、対応する型キーワード、対応するネイティブ型を示します。

|型キーワード|AliceScriptの型|.NETの型|ネイティブ型|
|--|--|--|--|
|`VOID`|該当なし|`System.Void`|Win32の`VOID`型|
|`BOOL`|`bool`|`System.Boolean`|Win32の`BOOL`型(実体は`INT`)|
|`LPSTR`、`LPWSTR`、`STRINGBUILDER`|`string`|`System.Text.StringBuilder`|`char*`または`char16_t*`(文字コードによる)|
|`LPTSTR`、`LPCSTR`、`LPCTSTR`、`LPCWSTR`、`STRING`|`string`|`System.String`|`const char*`または`const char16_t*`(文字コードによる)|

|型キーワード|AliceScriptの型|条件|小数|.NETの型|ネイティブ型|
|--|--|--|--|--|--|
|`INT8`、`SCHAR`、`SBYTE`|`number`|-128～127|無視|`System.SByte`|`int8_t`|
|`UCHAR`、`CHAR`、`BYTE`、`BOOLEAN`|`number`|0～255|無視|`System.Byte`|`uint8_t`|
|`INT16`、`SHORT`|`number`|-2,147,483,648～2,147,483,647|無視|`System.Int16`|`int16_t`|
|`UINT16`、`USHORT`、`WORD`|`number`|0～4,294,967,295|無視|`System.UInt16`|`uint16_t`|
|`INT32`、`INT`、`LONG32`|`number`|-2,147,483,648～2,147,483,647|無視|`System.Int32`|`int32_t`|
|`UINT32`、`UINT`、`ULONG32`、`DWORD`|`number`|0～4,294,967,295|無視|`System.UInt32`|`uint32_t`|
|`INT64`、`LONG`、`LONG64`、`LONGLONG`|`number`|-9,223,372,036,854,775,808～9,223,372,036,854,775,807|無視|`System.Int64`|`int64_t`|
|`UINT64`、`ULONG`、`ULONG64`、`ULONGLONG`|`number`|0～18,446,744,073,709,551,615|無視|`System.UInt64`|`uint64_t`|
|`FLOAT`、`SINGLE`|`number`|±1.5 x 10−45～±3.4 x 1038|有効|`System.Short`|Win32の`SINGLE`型|
|`DOUBLE`|`number`|条件なし|有効|`System.Double`|Win32の`DOUBLE`型|
|`HDC`、`HWND`、`HANDLE`、`IntPtr`|`number`|32ビットまたは64ビット以内|無視|`System.IntPtr`|`intptr_t`|
|`UIntPtr`|`number`|符号なし32ビットまたは64ビット以内|無視|`System.UIntPtr`|`uintptr_t`|
---
title: ReplaceLineEndings
long_title: string.ReplaceLineEndings
summary: 現在の文字列中のすべての改行文字を一意な形式に正規化します。
date : 2023-10-22
mt_type: method
mt_title: ReplaceLineEndings()
mt_summary: 現在の文字列中のすべての改行文字を現在の環境の改行文字に置換します。
mt_title: ReplaceLineEndings(string)
mt_summary: 現在の文字列中のすべての改行文字を指定した文字列に置換します。
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

#### ReplaceLineEndings()

現在の文字列中のすべての改行文字を[env_newline](../alice/environment/env_newline.md)の値に置換します。

```cs title="AliceScript"
namespace Alice;
public string ReplaceLineEndings();
```

|戻り値| |
|-|-|
|`string`|実行した結果の文字列|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

#### ReplaceLineEndings(string)

現在の文字列中のすべての改行文字を指定した文字列に置換します。

```cs title="AliceScript"
namespace Alice;
public string ReplaceLineEndings(string replacementText);
```

|引数| |
|-|-|
|`replacementText`|改行文字を置換する文字列|

|戻り値| |
|-|-|
|`string`|実行した結果の文字列|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 説明
このメソッドは、文字列内のすべての改行文字列を検索し、`replacementText`または[env_newline](../alice/environment/env_newline.md)の値に置換することで、文字列内の改行文字を正規化します。また、`replacementText`に空の文字列が指定された場合、文字列内のすべての改行文字が削除されます。

通信プロトコルを直接操作するようなプログラムにはこのメソッドを使用しないでください。
多くのプロトコルの仕様では、改行文字が必要です。たとえば、HTTP/1.1(RFC8615)では、要求行、状態行、ヘッダー行がCRLFで終わる必要があります。このような要求文字列にこのメソッドを使用すると、プロトコルの設計者が意図しない動作を引き起こす可能性があります。

このメソッドが改行文字として認識する文字列は、CR(U+000D)、LF(U+000A)、CRLF(U+000D U+000A)、NEL(U+0085)、LS(U+2028)、FF(U+000C)、PS(U+2029)の7つです。これは、Unicode標準のセクション5.8、推奨事項R4の表5-2に適合しています。

### 例
以下は、文字列中の改行文字をすべて`\n`に統一します。

```cs title="AliceScript"
var a = "Hello\r\nWorld";
print(a.ReplaceLineEndings("\n"));//出力:Hello\nWorld
```

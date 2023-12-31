---
title: Contains
summary: 現在の文字列内に指定された文字列が存在するかを示す値を取得します
date : 2021-12-09
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の文字列内に指定された文字列が存在するかを示す値を取得します

```cs title="AliceScript"
namespace Alice;
bool Contains(string item);
```

|引数| |
|-|-|
|`item`|判定する文字列|

|戻り値| |
|-|-|
|`bool`| 現在の文字列内に要素が存在すれば`true`、それ以外の場合は`false`|

大文字小文字を区別するかを指定して、現在の文字列内に指定された文字列が存在するかを示す値を取得します

<span class="badge bg-success">対応バージョン>=Alice3.0</span>

```cs title="AliceScript"
namespace Alice;
bool Contains(string item,bool ignoreCase);
```

|引数| |
|-|-|
|`item`|判定する文字列|
|`ignoreCase`|判定時に大文字小文字を区別しない場合はtrue、それ以外の場合はfalse|

|戻り値| |
|-|-|
|`bool`| 現在の文字列内に要素が存在すれば`true`、それ以外の場合は`false`|

!!!note "実装に関する注意"
    このオーバーロードはAliceSisterでは実装されていません。
    それらの環境では`0x034 NOT_IMPLEMENTED`例外がスローされます。

大文字小文字の区別と、現在のカルチャを考慮するかを指定して、現在の文字列内に指定された文字列が存在するかを示す値を取得します

<span class="badge bg-success">対応バージョン>=Alice3.0</span>

```cs title="AliceScript"
namespace Alice;
bool Contains(string item,bool ignoreCase,bool considerCulture);
```

|引数| |
|-|-|
|`item`|判定する文字列|
|`ignoreCase`|判定時に大文字小文字を区別しない場合は`true`、それ以外の場合は`false`|
|`considerCulture`|判定時にカルチャに依存した並べ替え規則と、現在のカルチャを使用する場合は`true`、それ以外の場合は`false`|

|戻り値| |
|-|-|
|`bool`| 現在の文字列内に要素が存在すれば`true`、それ以外の場合は`false`|

!!!note "実装に関する注意"
    このオーバーロードはAliceSisterでは実装されていません。
    それらの環境では`0x034 NOT_IMPLEMENTED`例外がスローされます。

### 例
以下は、Hello,Worldという文字列に`,`が存在するかを検証します

```cs title="AliceScript"
var a = "Hello,World";
print(a.Contains(",")); // 出力例 : true
```

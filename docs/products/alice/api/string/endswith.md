---
title: EndsWith
summary: 現在の文字列が指定した文字列で終わるかどうかを判定します
date : 2021-12-09
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の文字列が指定した文字列で終わるかどうかを判定します

```cs title="AliceScript"
namespace Alice;
bool EndsWith(string item);
```

|引数| |
|-|-|
|`item`|判定する文字列|

|戻り値| |
|-|-|
|`bool`|指定した文字列で終わっていれば`true`、それ以外の場合は`false`。|

大文字小文字を区別するかを指定して、現在の文字列が指定した文字列で終わるかどうかを判定します

<span class="badge bg-success">対応バージョン>=Alice3.0</span>

```cs title="AliceScript"
namespace Alice;
bool EndsWith(string item,bool ignoreCase);
```

|引数| |
|-|-|
|`item`|判定する文字列|
|`ignoreCase`|判定時に大文字小文字を区別しない場合はtrue、それ以外の場合はfalse|

|戻り値| |
|-|-|
|`bool`|指定した文字列で終わっていれば`true`、それ以外の場合は`false`。|

大文字小文字の区別と、現在のカルチャを考慮するかを指定して、現在の文字列が指定した文字列で終わるかどうかを判定します

<span class="badge bg-success">対応バージョン>=Alice3.0</span>

```cs title="AliceScript"
namespace Alice;
bool EndsWith(string item,bool ignoreCase,bool considerCulture);
```

|引数| |
|-|-|
|`item`|判定する文字列|
|`ignoreCase`|判定時に大文字小文字を区別しない場合は`true`、それ以外の場合は`false`|
|`considerCulture`|判定時にカルチャに依存した並べ替え規則と、現在のカルチャを使用する場合は`true`、それ以外の場合は`false`|

|戻り値| |
|-|-|
|`bool`|指定した文字列で終わっていれば`true`、それ以外の場合は`false`。|

### 例
以下は、"Hello,World"が"Hello"で終わっているかどうかを判定します

```cs title="AliceScript"
var a = "Hello,World";
print(a.EndsWith("Hello")); // 出力例 : false
```

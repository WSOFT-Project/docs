---
title: EndsWith
long_title : string.EndsWith
summary: 現在の文字列が指定した文字列で終わるかどうかを判定します
date : 2021-12-09
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

#### EndsWith(string)

現在の文字列が指定した文字列で終わるかどうかを判定します

```cs title="AliceScript"
namespace Alice;
public bool EndsWith(string item);
```

|引数| |
|-|-|
|`item`|判定する文字列|

|戻り値| |
|-|-|
|`bool`|指定した文字列で終わっていれば`true`、それ以外の場合は`false`。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

#### EndsWith(string,bool)

大文字小文字を区別するかを指定して、現在の文字列が指定した文字列で終わるかどうかを判定します

```cs title="AliceScript"
namespace Alice;
bool EndsWith(string item, bool ignoreCase);
```

|引数| |
|-|-|
|`item`|判定する文字列|
|`ignoreCase`|判定時に大文字小文字を区別しない場合はtrue、それ以外の場合はfalse|

|戻り値| |
|-|-|
|`bool`|指定した文字列で終わっていれば`true`、それ以外の場合は`false`。|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

#### EndsWith(string,bool,bool)

大文字小文字の区別と、現在のカルチャを考慮するかを指定して、現在の文字列が指定した文字列で終わるかどうかを判定します

```cs title="AliceScript"
namespace Alice;
bool EndsWith(string item, bool ignoreCase, bool considerCulture);
```

|引数| |
|-|-|
|`item`|判定する文字列|
|`ignoreCase`|判定時に大文字小文字を区別しない場合は`true`、それ以外の場合は`false`|
|`considerCulture`|判定時にカルチャに依存した並べ替え規則と、現在のカルチャを使用する場合は`true`、それ以外の場合は`false`|

|戻り値| |
|-|-|
|`bool`|指定した文字列で終わっていれば`true`、それ以外の場合は`false`。|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 例
以下は、"Hello,World"が"Hello"で終わっているかどうかを判定します

```cs title="AliceScript"
var a = "Hello,World";
print(a.EndsWith("Hello")); // 出力例 : false
```

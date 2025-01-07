---
title: StartsWith
long_title: string.StartsWith
summary: 現在の文字列が指定した文字列で始まるかどうかを判定します
date : 2021-12-09
mt_type: method
mt_title: StartsWith(string)
mt_summary: 現在の文字列が指定した文字列で始まるかどうかを判定します。
mt_title: StartsWith(string,bool)
mt_summary: 大文字小文字を区別するかを指定して、現在の文字列が指定した文字列で始まるかどうかを判定します。
mt_title: StartsWith(string,bool,bool)
mt_summary: 大文字小文字の区別と、現在のカルチャを考慮するかを指定して、現在の文字列が指定した文字列で始まるかどうかを判定します。
mt_title: StartsWith(string,string,bool,bool,bool,bool,bool)
mt_summary: カルチャの名前と文字列比較に関するオプションを指定して、現在の文字列が指定した文字列で始まるかどうかを判定します。
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

#### StartsWith(string)

現在の文字列が指定した文字列で始まるかどうかを判定します。

```cs title="AliceScript"
namespace Alice;
public bool StartsWith(string item);
```

|引数| |
|-|-|
|`item`|判定する文字列|

|戻り値| |
|-|-|
|`bool`|指定した文字列で始まっていれば`true`、それ以外の場合は`false`。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

#### StartsWith(string,bool)

大文字小文字を区別するかを指定して、現在の文字列が指定した文字列で始まるかどうかを判定します。

```cs title="AliceScript"
namespace Alice;
public bool StartsWith(string item, bool ignoreCase);
```

|引数| |
|-|-|
|`item`|判定する文字列|
|`ignoreCase`|判定時に大文字小文字を区別しない場合はtrue、それ以外の場合はfalse|

|戻り値| |
|-|-|
|`bool`|指定した文字列で始まっていれば`true`、それ以外の場合は`false`。|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0、4|
    |AliceSister|3.0、4|
    |Losetta|0.10、0.11|

#### StartsWith(string,bool,bool)

大文字小文字の区別と、現在のカルチャを考慮するかを指定して、現在の文字列が指定した文字列で始まるかどうかを判定します。


```cs title="AliceScript"
namespace Alice;
public bool StartsWith(string item,bool ignoreCase,bool considerCulture);
```

|引数| |
|-|-|
|`item`|判定する文字列|
|`ignoreCase`|判定時に大文字小文字を区別しない場合は`true`、それ以外の場合は`false`|
|`considerCulture`|判定時にカルチャに依存した並べ替え規則と、現在のカルチャを使用する場合は`true`、それ以外の場合は`false`|

|戻り値| |
|-|-|
|`bool`|指定した文字列で始まっていれば`true`、それ以外の場合は`false`。|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0、4|
    |AliceSister|3.0、4|
    |Losetta|0.10、0.11|


#### StartsWith(string,string,bool,bool,bool,bool,bool)



カルチャの名前と文字列比較に関するオプションを指定して、現在の文字列が指定した文字列で始まるかどうかを判定します。

```cs title="AliceScript"
namespace Alice;
public bool StartsWith(string item, string cultureName, bool ignoreCase = false, bool ignoreNonSpace = false, bool ignoreSymbols = false, bool ignoreWidth = false, bool ignoreKanaType = false);
```

|引数| |
|-|-|
|`item`|判定する文字列|
|`cultureName`|文字列比較に使用するカルチャの名前。ただし、カルチャに依存しない処理を行う場合は`null`|
|`ignoreCase`|判定時に大文字小文字を区別しない場合は`true`、区別する場合は`false`|
|`ignoreNonSpace`|非スペーシング記号文字(`Nonspacing mark`)の有無を区別しない場合は`true`、区別する場合は`false`|
|`ignoreSymbols`|空白や記号の有無を区別しない場合は`true`、区別する場合は`true`|
|`ignoreWidth`|全角文字と半角文字を区別しない場合は`true`、区別する場合は`false`|
|`ignoreKanaType`|ひらがなとカタカナを区別しない場合は`true`、区別する場合は`false`|

|戻り値| |
|-|-|
|`bool`|現在の文字列が指定した文字列で始まれば`true`、それ以外の場合は`false`。|

???note "対応: Alice4以降"
    |対応||
    |---|---|
    |AliceScript|4|
    |AliceSister|4|
    |Losetta|0.11|

### 例
以下は、"Hello,World"が"Hello"から始まっているかどうかを判定します

```cs title="AliceScript"
var a = "Hello,World";
print(a.StartsWith("Hello")); // 出力例 : true
```

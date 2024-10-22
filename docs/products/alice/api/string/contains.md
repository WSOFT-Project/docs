---
title: Contains
long_title : string.Contains
summary: 現在の文字列内に指定された文字列が含まれているかを判定します
date : 2021-12-09
mt_type: method
mt_title: Contains(string)
mt_summary: 現在の文字列内に指定された文字列が含まれているかを判定します。
mt_title: Contains(string,bool)
mt_summary: 大文字小文字を区別するかを指定して、現在の文字列内に指定された文字列が含まれているかを判定します。
mt_title: Contains(string,bool,bool)
mt_summary: 大文字小文字の区別と、現在のカルチャを考慮するかを指定して、現在の文字列内に指定された文字列が含まれているかを判定します。
mt_title: Contains(string,string,bool,bool,bool,bool,bool)
mt_summary: カルチャの名前と文字列比較に関するオプションを指定して、現在の文字列内に指定された文字列が含まれているかを判定します。
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

#### Contains(string)
現在の文字列内に指定された文字列が含まれているかを判定します。

```cs title="AliceScript"
namespace Alice;
public bool Contains(string item);
```

|引数| |
|-|-|
|`item`|判定する文字列|

|戻り値| |
|-|-|
|`bool`|現在の文字列内に`item`が含まれている場合は`true`、それ以外の場合は`false`|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

#### Contains(string,bool)
大文字小文字を区別するかを指定して、現在の文字列内に指定された文字列が含まれているかを判定します。

```cs title="AliceScript"
namespace Alice;
public bool Contains(string item, bool ignoreCase);
```

|引数| |
|-|-|
|`item`|判定する文字列|
|`ignoreCase`|判定時に大文字小文字を区別しない場合はtrue、それ以外の場合はfalse|

|戻り値| |
|-|-|
|`bool`|現在の文字列内に`item`が含まれている場合は`true`、それ以外の場合は`false`|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

#### Contains(string,bool,bool)

大文字小文字の区別と、現在のカルチャを考慮するかを指定して、現在の文字列内に指定された文字列が含まれているかを判定します。

```cs title="AliceScript"
namespace Alice;
public bool Contains(string item, bool ignoreCase, bool considerCulture);
```

|引数| |
|-|-|
|`item`|判定する文字列|
|`ignoreCase`|判定時に大文字小文字を区別しない場合は`true`、それ以外の場合は`false`|
|`considerCulture`|判定時にカルチャに依存した並べ替え規則と、現在のカルチャを使用する場合は`true`、それ以外の場合は`false`|

|戻り値| |
|-|-|
|`bool`|現在の文字列内に`item`が含まれている場合は`true`、それ以外の場合は`false`|

???note "対応: Alice3.0以降、AliceScriptとLosettaのみ"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|該当なし|
    |Losetta|0.10|

    この関数はAliceSisterでは実装されていません。

    実装されていない環境では`0x034 NOT_IMPLEMENTED`例外がスローされます。

#### Contains(string,string,bool,bool,bool,bool,bool)

> [!IMPORTANT] プレビュー
> この記事では、現在開発中のAlice vNEXTに実装される予定のAPIについて説明しています。
> このAPIは予告なく削除および変更される可能性があります。

カルチャの名前と文字列比較に関するオプションを指定して、現在の文字列内に指定された文字列が含まれているかを判定します。

```cs title="AliceScript"
namespace Alice;
public bool Contains(string item, string cultureName, bool ignoreCase = false, bool ignoreNonSpace = false, bool ignoreSymbols = false, bool ignoreWidth = false, bool ignoreKanaType = false);
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
|`bool`|現在の文字列内に`item`が含まれている場合は`true`、それ以外の場合は`false`|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

### 例
以下は、Hello,Worldという文字列に`,`が存在するかを検証します

```cs title="AliceScript"
var a = "Hello,World";
print(a.Contains(",")); // 出力例 : true
```

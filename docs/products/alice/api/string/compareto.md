---
title: CompareTo
long_title : string.CompareTo
summary: この文字列と指定した文字列を比較して、文字列を並べ替えたときにこの文字列が前にくるか、後ろにくるか、または同じであるかを表す整数を取得します
date : 2021-12-09
mt_type: method
mt_title: CompareTo(string)
mt_summary: この文字列と指定した文字列を比較して、文字列を並べ替えたときにこの文字列が前にくるか、後ろにくるか、または同じであるかを表す整数を取得します。
mt_title: CompareTo(string,bool)
mt_summary: 大文字と小文字を比較するかを指定した上でこの文字列と指定した文字列を比較して、文字列を並べ替えたときにこの文字列が前にくるか、後ろにくるか、または同じであるかを表す整数を取得します。
mt_title: CompareTo(string,bool,bool)
mt_summary: 大文字と小文字を比較するかとカルチャを考慮するかを指定した上でこの文字列と指定した文字列を比較して、文字列を並べ替えたときにこの文字列が前にくるか、後ろにくるか、または同じであるかを表す整数を取得します。
mt_title: CompareTo(string,string,bool,bool,bool,bool,bool)
mt_summary: カルチャの名前と文字列比較に関するオプションを指定して、この文字列と指定した文字列を比較して文字列を並べ替えたときにこの文字列が前にくるか、後ろにくるか、または同じであるかを表す整数を取得します。
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

#### CompareTo(string)

この文字列と指定した文字列を比較して、文字列を並べ替えたときにこの文字列が前にくるか、後ろにくるか、または同じであるかを表す整数を取得します。

```cs title="AliceScript"
namespace Alice;
public number CompareTo(string item);
```

|引数| |
|-|-|
|`item`|この文字列と比較する文字列|

|戻り値| |
|-|-|
|`number`|前の場合は`-1`、同じ場合は`0`、後ろの場合は`1`|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

#### CompareTo(string,bool)

> [!IMPORTANT] プレビュー
> この記事では、現在開発中のAlice vNEXTに実装される予定のAPIについて説明しています。
> このAPIは予告なく削除および変更される可能性があります。

大文字と小文字を比較するかを指定した上でこの文字列と指定した文字列を比較して、文字列を並べ替えたときにこの文字列が前にくるか、後ろにくるか、または同じであるかを表す整数を取得します。

```cs title="AliceScript"
namespace Alice;
public number CompareTo(string item, bool ignoreCase);
```

|引数| |
|-|-|
|`item`|この文字列と比較する文字列|
|`ignoreCase`|比較時に大文字小文字を考慮しない場合は`true`、そうでない場合は`false`|

|戻り値| |
|-|-|
|`number`|前の場合は`-1`、同じ場合は`0`、後ろの場合は`1`|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

#### CompareTo(string,bool,bool)

> [!IMPORTANT] プレビュー
> この記事では、現在開発中のAlice vNEXTに実装される予定のAPIについて説明しています。
> このAPIは予告なく削除および変更される可能性があります。

大文字と小文字を比較するかとカルチャを考慮するかを指定した上でこの文字列と指定した文字列を比較して、文字列を並べ替えたときにこの文字列が前にくるか、後ろにくるか、または同じであるかを表す整数を取得します。

```cs title="AliceScript"
namespace Alice;
public number CompareTo(string item, bool ignoreCase, bool considerCulture);
```

|引数| |
|-|-|
|`item`|この文字列と比較する文字列|
|`ignoreCase`|比較時に大文字小文字を考慮しない場合は`true`、そうでない場合は`false`|
|`considerCulture`|比較時にカルチャを考慮する場合は`true`、考慮せず序数による比較を行う場合は`false`|

|戻り値| |
|-|-|
|`number`|前の場合は`-1`、同じ場合は`0`、後ろの場合は`1`|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

#### CompareTo(string,string,bool,bool,bool,bool,bool)

> [!IMPORTANT] プレビュー
> この記事では、現在開発中のAlice vNEXTに実装される予定のAPIについて説明しています。
> このAPIは予告なく削除および変更される可能性があります。

カルチャの名前と文字列比較に関するオプションを指定して、この文字列と指定した文字列を比較して文字列を並べ替えたときにこの文字列が前にくるか、後ろにくるか、または同じであるかを表す整数を取得します。

```cs title="AliceScript"
namespace Alice;
public number CompareTo(string item, string cultureName, bool ignoreCase = false, bool ignoreNonSpace = false, bool ignoreSymbols = false, bool ignoreWidth = false, bool ignoreKanaType = false);
```

|引数| |
|-|-|
|`item`|この文字列と比較する文字列|
|`cultureName`|文字列比較に使用するカルチャの名前。ただし、カルチャに依存しない処理を行う場合は`null`|
|`ignoreCase`|判定時に大文字小文字を区別しない場合は`true`、区別する場合は`false`|
|`ignoreNonSpace`|非スペーシング記号文字(`Nonspacing mark`)の有無を区別しない場合は`true`、区別する場合は`false`|
|`ignoreSymbols`|空白や記号の有無を区別しない場合は`true`、区別する場合は`true`|
|`ignoreWidth`|全角文字と半角文字を区別しない場合は`true`、区別する場合は`false`|
|`ignoreKanaType`|ひらがなとカタカナを区別しない場合は`true`、区別する場合は`false`|

|戻り値| |
|-|-|
|`number`|前の場合は`-1`、同じ場合は`0`、後ろの場合は`1`|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

### 説明
このメソッドは、この文字列ともうひとつの文字列を並べ替えたときの順番を判定します。

> [!WARNING] 注意事項
> このメソッドは、文字列の並べ替えに使用するメソッドです。このメソッドをふたつの文字列が等価であるか判断するために使用しないでください。そのような目的には、[Equals](./equals.md)メソッドを使用してください。

### 例
以下は、"Hello,World"と`Hello`のどちらが先頭にくるかを取得します

```cs title="AliceScript"
var a = "Hello,World";
a.CompareTo("Hello");
```

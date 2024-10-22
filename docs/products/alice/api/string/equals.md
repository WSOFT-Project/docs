---
title: Equals
long_title : string.Equals
summary: この文字列と、指定した文字列が同一かどうかを判断します
date : 2023-10-22
mt_type: method
mt_title: Equals(string)
mt_summary: この文字列と、指定した文字列が同一かどうかを判断します
mt_title: Equals(string,bool)
mt_summary: 大文字小文字の区別と、現在のカルチャを考慮するかを指定して、比較するもう一方の文字列が等価かどうか判断します
mt_title: Equals(string,bool,bool)
mt_summary: 大文字小文字の区別と、現在のカルチャを考慮するかを指定して、この文字列と比較するもう一方の文字列が等価かどうか判断します
mt_title: Equals(string,string,bool,bool,bool,bool,bool)
mt_summary: カルチャの名前と文字列比較に関するオプションを指定して、この文字列と比較するもう一方の文字列が等価かどうか判断します。
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

#### Equals(string)

この文字列と、比較するもう一方の文字列が等価かどうか判断します。

```cs title="AliceScript"
namespace Alice;
public override bool Equals(string item);
```

|引数| |
|-|-|
|`item`|この文字列と比較する文字列|

|戻り値| |
|-|-|
|`bool`|`item`の値がこの文字列と同じ場合は`true`、それ以外の場合は`false`|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

#### Equals(string,bool)

大文字小文字を区別するかを指定して、この文字列と比較するもう一方の文字列が等価かどうか判断します。

```cs title="AliceScript"
namespace Alice;
bool Equals(string item,bool ignoreCase);
```

|引数| |
|-|-|
|`item`|この文字列と比較する文字列|
|`ignoreCase`|判定時に大文字小文字を区別しない場合はtrue、それ以外の場合はfalse|

|戻り値| |
|-|-|
|`bool`|`item`の値がこの文字列と同じ場合は`true`、それ以外の場合は`false`|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

#### Equals(string,bool,bool)

大文字小文字の区別と、現在のカルチャを考慮するかを指定して、この文字列と比較するもう一方の文字列が等価かどうか判断します。

```cs title="AliceScript"
namespace Alice;
bool Equals(string item, bool ignoreCase, bool considerCulture);
```

|引数| |
|-|-|
|`item`|この文字列と比較する文字列|
|`ignoreCase`|判定時に大文字小文字を区別しない場合はtrue、それ以外の場合はfalse|
|`considerCulture`|判定時にカルチャに応じた比較を行う場合は`true`、カルチャに依存しない比較を行う場合は`false`|

|戻り値| |
|-|-|
|`bool`|`item`の値がこの文字列と同じ場合は`true`、それ以外の場合は`false`|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

#### Equals(string,string,bool,bool,bool,bool,bool)

> [!IMPORTANT] プレビュー
> この記事では、現在開発中のAlice vNEXTに実装される予定のAPIについて説明しています。
> このAPIは予告なく削除および変更される可能性があります。

カルチャの名前と文字列比較に関するオプションを指定して、この文字列と比較するもう一方の文字列が等価かどうか判断します。

```cs title="AliceScript"
namespace Alice;
bool Equals(string item, string cultureName, bool ignoreCase = false, bool ignoreNonSpace = false, bool ignoreSymbols = false, bool ignoreWidth = false, bool ignoreKanaType = false);
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
|`bool`|`item`の値がこの文字列と同じ場合は`true`、それ以外の場合は`false`|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

### 説明
このメソッドは規定では、UTF-16でエンコードされた連続する文字列の値をひとつづつ比較して、文字列を比較します。この比較は高速ですが、はじめに文字列を正規化する必要があります。

カルチャを考慮しない場合、このメソッドは単純にバイト比較を行うためパフォーマンスに優れているほか、安全で厳密な一致ができます。例えば、パスワードの比較にはカルチャを考慮しない比較を行うべきです。
比較する文字列が言語的な意味を持つ場合は、カルチャを考慮した文字列比較を行うことをおすすめします。

### 例
以下は、2つの文字列が同一であることを確認しています。

```cs title="AliceScript"
var a = "Taro";
var b = "Taro";

print(a.Equals(b));//出力:true

// このように書いても同じ
print(a == b);//出力:true
```

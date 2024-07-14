---
title: Equals
long_title : string.Equals
summary: この文字列と、指定した文字列が同一かどうかを判断します
date : 2023-10-22
mt_type: method
mt_title: Equals(string)
mt_summary: カルチャと大文字小文字を区別してこの文字列と、指定した文字列が同一かどうかを判断します
mt_title: Equals(string,bool)
mt_summary: 大文字小文字を区別するかを指定して、この文字列と、指定した文字列が同一かどうかを判断します
mt_title: Equals(string,bool,bool)
mt_summary: 大文字小文字の区別と、現在のカルチャを考慮するかを指定して、この文字列と指定した文字列が同一かどうかを判断します
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

#### Equals(string)

カルチャと大文字小文字を区別してこの文字列と、指定した文字列が同一かどうかを判断します

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

大文字小文字を区別するかを指定して、この文字列と、指定した文字列が同一かどうかを判断します

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

大文字小文字の区別と、現在のカルチャを考慮するかを指定して、この文字列と指定した文字列が同一かどうかを判断します

```cs title="AliceScript"
namespace Alice;
bool Equals(string item, bool ignoreCase, bool considerCulture);
```
|引数| |
|-|-|
|`item`|この文字列と比較する文字列|
|`ignoreCase`|判定時に大文字小文字を区別しない場合はtrue、それ以外の場合はfalse|
|`considerCulture`|判定時にカルチャに依存した並べ替え規則と、現在のカルチャを使用する場合は`true`、それ以外の場合は`false`|

|戻り値| |
|-|-|
|`bool`|`item`の値がこの文字列と同じ場合は`true`、それ以外の場合は`false`|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 説明
このメソッドは既定では、カルチャを認識し、大文字小文字を区別して文字列を比較します。
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

---
title: Contains
long_title : string.Contains
summary: 現在の文字列内に指定された文字列が存在するかを示す値を取得します
date : 2021-12-09
mt_type: method
mt_title: Contains(string)
mt_summary: 現在の文字列内に指定された文字列が存在するかを示す値を取得します。
mt_title: Contains(string,bool)
mt_summary: 大文字小文字を区別するかを指定して、現在の文字列内に指定された文字列が存在するかを示す値を取得します。
mt_title: Contains(string,bool,bool)
mt_summary: 大文字小文字の区別と、現在のカルチャを考慮するかを指定して、現在の文字列内に指定された文字列が存在するかを示す値を取得します。
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

#### Contains(string)
現在の文字列内に指定された文字列が存在するかを示す値を取得します。

```cs title="AliceScript"
namespace Alice;
public bool Contains(string item);
```

|引数| |
|-|-|
|`item`|判定する文字列|

|戻り値| |
|-|-|
|`bool`| 現在の文字列内に要素が存在すれば`true`、それ以外の場合は`false`|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

#### Contains(string,bool)
大文字小文字を区別するかを指定して、現在の文字列内に指定された文字列が存在するかを示す値を取得します。

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
|`bool`| 現在の文字列内に要素が存在すれば`true`、それ以外の場合は`false`|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

#### Contains(string,bool,bool)

大文字小文字の区別と、現在のカルチャを考慮するかを指定して、現在の文字列内に指定された文字列が存在するかを示す値を取得します。

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
|`bool`| 現在の文字列内に要素が存在すれば`true`、それ以外の場合は`false`|

???note "対応: Alice3.0以降、AliceScriptとLosettaのみ"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|該当なし|
    |Losetta|0.10|

    この関数はAliceSisterでは実装されていません。

    実装されていない環境では`0x034 NOT_IMPLEMENTED`例外がスローされます。

### 例
以下は、Hello,Worldという文字列に`,`が存在するかを検証します

```cs title="AliceScript"
var a = "Hello,World";
print(a.Contains(",")); // 出力例 : true
```

---
title: Replace
long_title: string.Replace
summary: 現在の文字列内に出現する特定の文字列をすべて指定した文字列に置き換えた新しい文字列を取得します。
date : 2021-12-09
mt_type: method
mt_title: Replace(string,string)
mt_summary: 現在の文字列内に出現する特定の文字列をすべて指定した文字列に置き換えた新しい文字列を取得します。
mt_title: Replace(string,string,number,number)
mt_summary: 現在の文字列内の指定した範囲に出現する特定の文字列をすべて指定した文字列に置き換えた新しい文字列を取得します。
mt_title: Replace(string,string,bool)
mt_summary: 指定した一致ルールを使用して、現在の文字列内に出現する特定の文字列をすべて指定した文字列に置き換えた新しい文字列を取得します。
mt_title: Replace(string,string,bool,bool)
mt_summary: 指定した一致ルールを使用して、現在の文字列内の指定した範囲に出現する特定の文字列をすべて指定した文字列に置き換えた新しい文字列を取得します。
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

#### Replace(string,string)

現在の文字列内に出現する特定の文字列をすべて指定した文字列に置き換えた新しい文字列を取得します。

```cs title="AliceScript"
class Alice.String;
public string Replace(string oldValue, string newValue);
```

|引数| |
|-|-|
|`oldValue`|置換する場所の文字列|
|`newValue`|置換後の文字列|

|戻り値| |
|-|-|
|`string`|実行後の文字列|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

#### Replace(string,string,number,number)

現在の文字列内の指定した範囲に出現する特定の文字列をすべて指定した文字列に置き換えた新しい文字列を取得します。

```cs title="AliceScript"
class Alice.String;
public string Replace(string oldValue, string newValue, number startIndex, number length);
```

|引数| |
|-|-|
|`oldValue`|置換する場所の文字列|
|`newValue`|置換後の文字列または`null`|
|`startIndex`|置換を実行する部分の開始位置|
|`count`|置換を実行する部分の長さ|

|戻り値| |
|-|-|
|`string`|実行後の文字列|

???note "対応: Alice2.3以降"
    |対応||
    |---|---|
    |AliceScript|2.3、3.0|
    |AliceSister|2.3、3.0|
    |Losetta|0.9、0.10|

#### Replace(string,string,bool)

指定した一致ルールを使用して、現在の文字列内に出現する特定の文字列をすべて指定した文字列に置き換えた新しい文字列を取得します。

```cs title="AliceScript"
class Alice.String;
public string Replace(string oldValue, string newValue, bool ignoreCase);
```

|引数| |
|-|-|
|`oldValue`|置換する場所の文字列|
|`newValue`|置換後の文字列または`null`|
|`ignoreCase`|一致しているかを評価するときに大文字小文字を区別する場合は`true`、それ以外の場合は`false`|

|戻り値| |
|-|-|
|`string`|実行後の文字列|

???note "対応: Alice3.0以降、AliceScriptとLosettaのみ"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|該当なし|
    |Losetta|0.10|

    この関数はAliceSisterでは実装されていません。

    実装されていない環境では`0x034 NOT_IMPLEMENTED`例外がスローされます。

#### Replace(string,string,bool,bool)

指定した一致ルールを使用して、現在の文字列内の指定した範囲に出現する特定の文字列をすべて指定した文字列に置き換えた新しい文字列を取得します。

```cs title="AliceScript"
class Alice.String;
public string Replace(string oldValue, string newValue, bool ignoreCase, bool considerCulture);
```

|引数| |
|-|-|
|`oldValue`|置換する場所の文字列|
|`newValue`|置換後の文字列または`null`|
|`ignoreCase`|一致しているかを評価するときに大文字小文字を区別する場合は`true`、それ以外の場合は`false`|
|`considerCulture`|一致しているかを評価するときに現在のカルチャのルールを使用する場合は`true`、それ以外の場合は`false`|

|戻り値| |
|-|-|
|`string`|実行後の文字列|


???note "対応: Alice3.0以降、AliceScriptとLosettaのみ"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|該当なし|
    |Losetta|0.10|

    この関数はAliceSisterでは実装されていません。

    実装されていない環境では`0x034 NOT_IMPLEMENTED`例外がスローされます。

### 例
以下は、`にわにはにわにわとりがいる`という文字列を読みやすく置換します。

```cs title="AliceScript"
var str = "にわにはにわにわとりがいる";

//「にわとり」を「庭」に置換する
str = str.Replace("にわとり","鶏");
//先頭から2文字までの「にわ」を「庭」に置換する
str = str.Replace("にわ","庭",0,2);

print(str);//出力例:庭にはにわ鶏がいる
```

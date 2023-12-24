---
title: Replace
summary: 現在の文字列内に出現する特定の文字列をすべて指定した文字列に置き換えた新しい文字列を取得します。
date : 2021-12-09
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の文字列内に出現する特定の文字列をすべて指定した文字列に置き換えた新しい文字列を取得します。

```cs title="AliceScript"
class Alice.String;
string Replace(string oldValue,string newValue);
```

|引数| |
|-|-|
|`oldValue`|置換する場所の文字列|
|`newValue`|置換後の文字列|

|戻り値| |
|-|-|
|`string`|実行後の文字列|

現在の文字列内の一部に出現する特定の文字列をすべて指定した文字列に置き換えた新しい文字列を取得します。

<span class="badge bg-success">対応バージョン>=Alice2.3</span>

```cs title="AliceScript"
class Alice.String;
string Replace(string oldValue,string newValue,number startIndex,number length);
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

指定した一致ルールを使用して、現在の文字列内の一部に出現する特定の文字列をすべて指定した文字列に置き換えた新しい文字列を取得します。

<span class="badge bg-success">対応バージョン>=Alice3.0</span>

```cs title="AliceScript"
class Alice.String;
string Replace(string oldValue, string newValue, bool ignoreCase);
```

|引数| |
|-|-|
|`oldValue`|置換する場所の文字列|
|`newValue`|置換後の文字列または`null`|
|`ignoreCase`|一致しているかを評価するときに大文字小文字を区別する場合は`true`、それ以外の場合は`false`|

|戻り値| |
|-|-|
|`string`|実行後の文字列|

!!!note "実装に関する注意"
    このオーバーロードはAliceSisterでは実装されていません。

<span class="badge bg-success">対応バージョン>=Alice3.0</span>

```cs title="AliceScript"
class Alice.String;
string Replace(string oldValue, string newValue, bool ignoreCase, bool considerCulture);
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

!!!note "実装に関する注意"
    このオーバーロードはAliceSisterでは実装されていません。

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

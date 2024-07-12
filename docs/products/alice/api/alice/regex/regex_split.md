---
title: regex_split
summary: 指定した文字列を特定の正規表現パターンを使って分割します。
mt_type: function
mt_title: regex_split(string,string)
---

### 定義
名前空間: Alice.Regex<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Regex.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Regex.cs)

#### regex_split(string,string)

指定した文字列を特定の正規表現パターンを使って分割します。

```cs title="AliceScript"
namespace Alice.Regex;
public string[] regex_split(string input, string pattern);
```

|引数| |
|-|-|
|`input`|分割する元となる文字列|
|`pattern`|分割規則を定める文字列|

|戻り値| |
|-|-|
|`string`|入力文字列を`pattern`の規則に従って分割した文字列を含む配列|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 説明
この関数は、指定された正規表現に一致する場所ごとに入力文字列を分割して返します。

正規表現に合致する部分がなかった場合は、この関数は入力文字列をひとつ含む配列を返します。

一般に、正規表現の検索は時間がかかる操作です。"特定の文字列ごとに分割する"などの単純な操作を行う場合は[string.split](../../string/split.md)メソッドを使用することを検討してください。

### 例
次の例では、文字列`123,456`をカンマ区切りで分割しています。

```cs title="AliceScript"
using Alice.Regex;

string text = "123,456";
var split = regex_split(text, ",")

print(trimmed);
//出力: [123, 456]
```
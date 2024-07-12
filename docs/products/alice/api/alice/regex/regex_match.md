---
title: regex_match
summary: 指定された正規表現に最初に一致する箇所を取得します。
mt_type: function
mt_title: regex_match(string,string)
---

### 定義
名前空間: Alice.Regex<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Regex.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Regex.cs)

#### regex_match(string,string)

指定された正規表現に最初に一致する箇所を取得します。

```cs title="AliceScript"
namespace Alice.Regex;
public string regex_match(string input, string pattern);
```

|引数| |
|-|-|
|`input`|検索する文字列|
|`pattern`|検索する正規表現のパターン|

|戻り値| |
|-|-|
|`string`|正規表現と一致する箇所が見つかった場合は一致する場所の文字列、それ以外の場合は空文字列|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 説明
この関数は、指定された正規表現に最初に一致する箇所を取得します。

正規表現パターンに一致するものが見つからなかった場合、この関数は空の文字列を返します。

### 例
次の例では、`C`で始まり`E`で終わる部分を切り出しています。

```cs title="AliceScript"
using Alice.Regex;

string text = "ABCDEFG";
string trimmed = regex_match(tex, "C*E");

print(trimmed);
//出力: CDE
```
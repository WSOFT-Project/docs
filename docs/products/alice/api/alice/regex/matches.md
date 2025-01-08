---
title: Matches
long_title : string.Matches
summary: 指定された正規表現に一致する箇所をすべて取得します。
mt_type: method
mt_title: Matches(this string,string)
---

### 定義
名前空間: Alice.Regex<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Regex.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Regex.cs)

#### Matches(this string,string)

指定された正規表現に一致する箇所をすべて取得します。

```cs title="AliceScript"
namespace Alice.Regex;
public string[] Matches(this string input, string pattern);
```

|引数| |
|-|-|
|`input`|検索する文字列|
|`pattern`|検索する正規表現のパターン|

|戻り値| |
|-|-|
|`string[]`|正規表現と一致する箇所が見つかった場合は一致する場所の文字列の配列、それ以外の場合は空の配列|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 説明
このメソッドを呼び出すことは、[regex_matches](./regex_matches.md)を呼び出すことと同義です。

このメソッドは、指定された正規表現に一致する箇所をすべて取得します。この関数は、[regex_match](./regex_match.md)と似ていますが、一致するすべての場所を返す点で異なります。

正規表現パターンに一致するものが見つからなかった場合、この関数は空の配列を返します。

### 例
次の例では、`A`で始まり`C`で終わる部分をすべて出力します。

```cs title="AliceScrtip"
using Alice.Regex;

string text = "ABCDABCDABC";
var result = regex_Matches(text,"A*B");

foreach(string trimmed in result)
{
    print(trimmed);
    //出力: ABC ABC ABC
}
```
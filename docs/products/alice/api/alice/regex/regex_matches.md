---
title: regex_Matches
summary: 指定された正規表現に一致する箇所をすべて取得します。
---

### 定義
名前空間:Alice.Regex / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript3.0

属性: 関数

指定された正規表現に一致する箇所をすべて取得します。

```cs title="AliceScript"
namespace Alice.Regex;
public string[] regex_Matches(string input, string pattern);
```

|引数| |
|-|-|
|`input`|検索する文字列|
|`pattern`|検索する正規表現のパターン|

|戻り値| |
|-|-|
|`string[]`|正規表現と一致する箇所が見つかった場合は一致する場所の文字列の配列、それ以外の場合は空の配列|

### 説明
この関数は、指定された正規表現に一致する箇所をすべて取得します。この関数は、[regex_match](./regex_match.md)と似ていますが、一致するすべての場所を返す点で異なります。

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
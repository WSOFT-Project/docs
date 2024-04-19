---
title: ReplaceAll
long_title : string.ReplaceAll
summary: 指定した文字列内でパターンに一致する文字列を、すべて指定した文字列で置き換えます。
---

### 定義
名前空間:Alice.Regex / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript3.0

属性: 関数

指定した文字列内でパターンに一致する文字列を、すべて指定した文字列で置き換えます。

```cs title="AliceScript"
namespace Alice.Regex;
public string ReplaceAll(this string input, string pattern, string replacement);
```

|引数| |
|-|-|
|`input`|置換対象を検索する文字列|
|`pattern`|置換対象を検索する正規表現のパターン|
|`replacement`|置換する文字列|

|戻り値| |
|-|-|
|`string`|入力文字列の該当部分を置換文字列で置き換えた新しい文字列。ただし置換すべき部分が見つからなかった場合は入力文字列となります。|

### 説明
このメソッドを呼び出すことは、[regex_replace](./regex_replace.md)関数を呼び出すことと同義です。

このメソッドは、指定された正規表現に一致する場所を全て置換文字列で置き換えます。

### 例
次の例では、`C`で始まり`E`で終わる部分を`cde`に置換します。

```cs title="AliceScript"
using Alice.Regex;

string text = "ABCDEFG";
string replaced = text.ReplaceAll("C*E", "cde");

print(trimmed);
//出力: ABcdeFG
```
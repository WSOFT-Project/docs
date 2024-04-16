---
title: regex_Match
summary: 指定された正規表現に最初に一致する箇所を取得します。
---

### 定義
名前空間:Alice.Regex / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript3.0

属性: 関数

指定された正規表現に最初に一致する箇所を取得します。

```cs title="AliceScript"
namespace Alice.Regex;
public string regex_Match(string input, string pattern);
```

|引数| |
|-|-|
|`input`|検索する文字列|
|`pattern`|検索する正規表現のパターン|

|戻り値| |
|-|-|
|`string`|正規表現と一致する箇所が見つかった場合は一致する場所の文字列、それ以外の場合は空文字列|

### 説明
この関数は、指定された正規表現に最初に一致する箇所を取得します。

正規表現パターンに一致するものが見つからなかった場合、この関数は空の文字列を返します。

### 例
次の例では、`C`で始まり`E`で終わる部分を切り出しています。

```cs title="AliceScript"
using Alice.Regex;

string text = "ABCDEFG";
string trimmed = regex_Match(text);

print(trimmed);
//出力: CDE
```
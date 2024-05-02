---
title: ReplaceFirst
long_title : string.ReplaceFirst
summary: 指定した文字列内でパターンに一致する文字列の初めに見つかった部分を、指定した文字列で置き換えます。
---

### 定義
名前空間: Alice.Regex<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Regex.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Regex.cs)

#### ReplaceFirst(this string,string,string)

指定した文字列内でパターンに一致する文字列の初めに見つかった部分を、指定した文字列で置き換えます。

```cs title="AliceScript"
namespace Alice.Regex;
public string ReplaceFirst(this string input, string pattern, string replacement);
```

|引数| |
|-|-|
|`input`|置換対象を検索する文字列|
|`pattern`|置換対象を検索する正規表現のパターン|
|`replacement`|置換する文字列|

|戻り値| |
|-|-|
|`string`|入力文字列の該当部分を置換文字列で置き換えた新しい文字列。ただし置換すべき部分が見つからなかった場合は入力文字列となります。|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 説明
このメソッドは、指定した文字列内でパターンに一致する文字列の初めに見つかった部分を、指定した文字列で置き換えます。

### 例
次の例では、`C`で始まり`E`で終わる部分を`cde`に置換します。

```cs title="AliceScript"
using Alice.Regex;

string text = "ABCDEFG";
string replaced = text.ReplaceFirst("C*E", "cde");

print(trimmed);
//出力: ABcdeFG
```
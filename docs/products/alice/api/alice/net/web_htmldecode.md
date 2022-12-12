---
title: web_htmldecode
summary: HTMLでエンコードされた文字列をでコードされた文字列に変換します。
date : 2021-08-26
---
### 定義
名前空間:Alice.Net / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

HTMLでエンコードされた文字列をでコードされた文字列に変換します。

```cs title="AliceScript"
namespace Alice.Net;
string web_htmldecode(string text);
```

|引数| |
|-|-|
|`text`| デコードする文字列|

|戻り値| |
|-|-|
|`string`| デコードされた文字列|

### 例
次の例では、[web_htmlencode](../web_htmlencode)関数を使用して文字列をHTMLエンコードし、その後[web_htmldecode](../web_htmldecode)関数を使用してHTMLデコードしたものを表示します。

```cs title="AliceScript"
using Alice.Net;

var text = "<div class=\"row\">";

print("HTMLエンコード前のテキスト:{0}",text);

//HTMLエンコードする
text = web_htmlencode(text);

print("HTMLエンコード後のテキスト:{0}",text);

//HTMLデコードする（元の文字列に戻る）
text = web_htmldecode(text);

print("HTMLデコード後のテキスト:{0}",text);
```
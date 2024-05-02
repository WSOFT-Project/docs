---
title: web_urlencode
summary: 文字列をURLエンコードされた文字列に変換します。
date : 2021-08-26
---

### 定義
名前空間: Alice.Net<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Net.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Net.cs)

#### web_urlencode(string)

文字列をURLエンコードされた文字列に変換します。

```cs title="AliceScript"
namespace Alice.Net;
public string web_urlencode(string text);
```

|引数| |
|-|-|
|`text`| エンコードする文字列|

|戻り値| |
|-|-|
|`string`| エンコードされた文字列|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
次の例では、[web_urlencode](../web_urlencode)関数を使用して文字列をHTMLエンコードし、その後[web_urldecode](../web_urldecode)関数を使用してURLデコードしたものを表示します。

```cs title="AliceScript"
using Alice.Net;

var text = "<div class=\"row\">";

print("URLエンコード前のテキスト:{0}",text);

//HTMLエンコードする
text = web_urlencode(text);

print("URLエンコード後のテキスト:{0}",text);

//HTMLデコードする（元の文字列に戻る）
text = web_urldecode(text);

print("URLデコード後のテキスト:{0}",text);
```
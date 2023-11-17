---
title: Repeat
summary: 現在の文字列を指定回数繰り返した文字列を取得します
date : 2023-10-22
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript3.0

現在の文字列を指定回数繰り返した文字列を取得します

```cs title="AliceScript"
namespace Alice;
string Repeat(number repeatCount);
```

|引数| |
|-|-|
|`repeatCount`|文字列を繰り返す回数|

|戻り値| |
|-|-|
|`array`|現在の文字列を指定回数繰り返した文字列|

### 例
以下は、`Hello`を3回繰り返した文字列を取得しています。

```cs title="AliceScript"
string text = "Hello";
print(text.Repeat(3));//出力:HelloHelloHello
```

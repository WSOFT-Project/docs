---
title: Repeat
long_title: string.Repeat
summary: 現在の文字列を指定回数繰り返した文字列を取得します
date : 2023-10-22
mt_type: method
mt_title: Repeat(number)
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

#### Repeat(number)

現在の文字列を指定回数繰り返した文字列を取得します

```cs title="AliceScript"
namespace Alice;
public string Repeat(number repeats);
```

|引数| |
|-|-|
|`repeats`|文字列を繰り返す回数|

|戻り値| |
|-|-|
|`array`|現在の文字列を指定回数繰り返した文字列。ただし、`repeats`が0以下の場合は空の文字列。|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 例
以下は、`Hello`を3回繰り返した文字列を取得しています。

```cs title="AliceScript"
string text = "Hello";
print(text.Repeat(3));//出力:HelloHelloHello
```

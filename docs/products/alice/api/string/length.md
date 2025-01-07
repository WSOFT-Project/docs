---
title: Length
long_title : string.Length
summary: 現在の文字列の文字数を返します
mt_type: property
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

現在の文字列の文字数を返します

```cs title="AliceScript"
class Alice.String;
public readonly number Length;
```

### 値
|値| |
|-|-|
|`number`|現在の文字列の文字数。ただし文字列が空の場合は0。|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 説明
このプロパティは、Unicode文字の数ではなく、個の配列に割り当てられているUTF-16文字の数を返します。格納している文字によっては、Unicode単位での一文字でも、複数のUTF-16文字として表される可能性があるため、このプロパティは正確な値を返さない可能性があります。

文字要素の数を数えたい場合は、[string.LengthInTextElements](./lengthintextelements.md)プロパティを使用してください。

C言語やC++などの一部の言語では、null文字は文字列の末尾を表します。AliceScriptでは、null文字を文字列に使用しても、末尾という意味にはなりません。文字列にひとつ以上のnull文字が含まれている場合、その文字も文字数に含みます。

### 例
以下は、`abc`の文字数を表示します

```cs title="AliceScript"
var a = "abc";
print(a.length); // 出力例 : 3
```

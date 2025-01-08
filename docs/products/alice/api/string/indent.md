---
title: Indent
long_title : string.Indent
summary: 文字列を指定されたレベルで字下げした新しい文字列を取得します
date : 2023-10-22
mt_type: method
mt_title: Indent(number,string)
mt_summary: 文字列を指定されたレベルで字下げした新しい文字列を取得します
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)


#### Indent(number,string)

文字列を指定されたレベルで字下げした新しい文字列を取得します

```cs title="AliceScript"
namespace Alice;
public string Indent(number indentLevel, string indentChar = " ");
```

|引数| |
|-|-|
|`indentLevel`|字下げを行うレベル|
|`padding`|字下げに使用する文字列。既定値は" "(空白文字)です。|

|戻り値| |
|-|-|
|`string`|実行した結果の文字列|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0、4|
    |AliceSister|3.0、4|
    |Losetta|0.10、0.11|

### 説明
このメソッドは、現在の文字列の先頭に`indentChar`を`indentLevel`個挿入した新しい文字列を返します。

### 例
以下は、`Hello,World`を2レベル字下げします。

```cs title="AliceScript"
var a = "Hello,World";
print(a.Indent(2));//出力:  Hello,World
```

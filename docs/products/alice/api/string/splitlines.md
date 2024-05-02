---
title: SplitLines
long_title: string.SplitLines
summary: 現在の文字列を行単位で分割した配列を取得します
date : 2023-10-22
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

#### SplitLines()

現在の文字列を行単位で分割した配列を取得します

```cs title="AliceScript"
namespace Alice;
public array SplitLines();
```

|戻り値| |
|-|-|
|`array`|行単位に分割した文字列が格納されている配列|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 説明
この関数は、改行文字(`\n`)ごとに文字列を分割し、分割した文字列から`\r`を除去した新しい文字列を作成します。

### 例
以下は、複数行にわたる文字列の行数を数えています。

```cs title="AliceScript"
string text = "Hello\nWorld";
print(text.SplitLines().Length);//出力:2
```

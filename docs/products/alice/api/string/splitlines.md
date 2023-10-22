---
title: SplitLines
summary: 現在の文字列を行単位で分割した配列を取得します
date : 2023-10-22
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript3.0

現在の文字列を行単位で分割した配列を取得します

```cs title="AliceScript"
namespace Alice;
array SplitLines();
```

|戻り値| |
|-|-|
|`array`|分割した文字列が格納されている配列|

### 例
以下は、複数行にわたる文字列の行数を数えています。

```cs title="AliceScript"
string text = "Hello\nWorld";
print(text.SplitLines().Length);//出力:2
```

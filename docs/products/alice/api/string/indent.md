---
title: Indent
summary: 文字列を指定されたレベルで字下げした新しい文字列を取得します
date : 2023-10-22
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript3.0

文字列を指定されたレベルで字下げした新しい文字列を取得します

```cs title="AliceScript"
namespace Alice;
string Indent(number indentLevel,string indentChar=" ");
```

|引数| |
|-|-|
|`indentLevel`|字下げを行うレベル|
|`padding`|字下げに使用する文字列|

|戻り値| |
|-|-|
|`string`|実行した結果の文字列|

### 例
以下は、`Hello,World`を2レベル字下げします。

```cs title="AliceScript"
var a = "Hello,World";
print(a.Indent(2));//出力:  Hello,World
```

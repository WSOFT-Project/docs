---
title: Format
summary: 指定された値を使用して現在の文字列を複合書式指定子としてフォーマットした文字列を取得します
date : 2021-12-09
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

指定された値を使用して現在の文字列を複合書式指定子としてフォーマットした文字列を取得します

```cs title="AliceScript"
namespace Alice;
string Format(params variable item);
```

|引数| |
|-|-|
|`item`|フォーマットする値|

|戻り値| |
|-|-|
|`string`|フォーマットされた文字列|

### 例
以下は、複合書式指定を使用してHello,Worldを作成します。

```cs title="AliceScript"
var a = "{0},{1}";
print(a.Format("Hello","World")); // 出力例 : Hello,World
```

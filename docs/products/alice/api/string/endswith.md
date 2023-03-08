---
title: EndsWith
summary: 現在の文字列が指定した文字列で終わるかどうかを判定します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の文字列が指定した文字列で終わるかどうかを判定します

```cs title="AliceScript"
namespace Alice;
bool EndsWith(string item);
```

|引数| |
|-|-|
|`item`|判定する文字列|

|戻り値| |
|-|-|
|`bool`|指定した文字列で終わっていれば`true`、それ以外の場合は`false`。|

### 例
以下は、"Hello,World"が"Hello"から終わっているかどうかを判定します

```cs title="AliceScript"
var a = "Hello,World";
print(a.EndsWith("Hello")); // 出力例 : false
```

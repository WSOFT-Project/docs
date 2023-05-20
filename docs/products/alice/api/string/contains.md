---
title: Contains
summary: 現在の文字列内に指定された文字列が存在するかを示す値を取得します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の文字列内に指定された文字列が存在するかを示す値を取得します

```cs title="AliceScript"
namespace Alice;
bool Contains(string item);
```

|引数| |
|-|-|
|`item`|存在を確認する値|

|戻り値| |
|-|-|
|`bool`| 現在の文字列内に要素が存在すれば`true`、それ以外の場合は`false`|

### 例
以下は、Hello,Worldという文字列に,が存在するかを検証します

```cs title="AliceScript"
var a = "Hello,World";
print(a.Contains(",")); // 出力例 : true
```

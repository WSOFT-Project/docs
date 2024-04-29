---
title: Insert
long_title : string.Insert
summary: 現在の文字列内の指定したインデックスにその値を挿入した文字列を取得します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の文字列内の指定したインデックスにその値を挿入した文字列を取得します

```cs title="AliceScript"
namespace Alice;
string Insert(number index, string item);
```

|引数| |
|-|-|
|`index`|挿入する配列内の場所を表すインデックス|
|`item`|挿入する変数|

|戻り値| |
|-|-|
|`string`|実行後の文字列|

### 例
以下は、Insertメソッドを使って文字列の先頭に"Hello"を追加しています。

```cs title="AliceScript"
var a = "World";
print(a.Insert(0,"Hello")); // 出力例 : HelloWorld
```

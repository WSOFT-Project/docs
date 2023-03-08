---
title: Remove
summary: 現在の文字列から指定された値を削除した文字列を取得します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の文字列から指定された値を削除した文字列を取得します

```cs title="AliceScript"
namespace Alice;
string Remove(params string item);
```

|引数| |
|-|-|
|`item`|配列から削除する文字列。この引数は可変長個指定できます。|

|戻り値| |
|-|-|
|`string`|実行後の文字列|

### 例
以下は、"Hello,World"からカンマを削除します。

```cs title="AliceScript"
var a = "Hello,World";
print(a.Remove(",")); // 出力例 : HelloWorld
```

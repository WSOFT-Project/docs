---
title: Normalize
summary: 同じ文字を表すコードポイントのすべての並びを共通の正規化された形式に文字列を変換した新しい文字列を取得します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

同じ文字を表すコードポイントのすべての並びを共通の正規化された形式に文字列を変換した新しい文字列を取得します

```cs title="AliceScript"
namespace Alice;
string Normalize();
```

|戻り値| |
|-|-|
|`string`|実行した結果の文字列|

### 例
以下は、"Hello,World"を正規化します。

```cs title="AliceScript"
var a = "Hello,World";
a.Normalize();
```

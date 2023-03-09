---
title: IsNormalized
summary: 現在の文字列が共通の正規化された形式であるかを示す値を取得します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の文字列が共通の正規化された形式であるかを示す値を取得します

```cs title="AliceScript"
namespace Alice;
readonly string IsNormalized;
```

|戻り値| |
|-|-|
|`string`|正規化されていれば`true`、それ以外の場合は`false`。|

### 例
以下は、"Hello,World"が正規化されているかを取得します

```cs title="AliceScript"
var a = "Hello,World";
print(a.Normalized);
```

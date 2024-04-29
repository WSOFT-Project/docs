---
title: IsNormalized
long_title : string.IsNormalized
summary: 現在の文字列がUnicode正規形Cであるかを示す値を取得します
date : 2021-12-09
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の文字列がUnicode正規形Cであるかを示す値を取得します

```cs title="AliceScript"
namespace Alice;
readonly string IsNormalized;
```

|戻り値| |
|-|-|
|`string`|現在の文字列が正規化されていれば`true`、それ以外の場合は`false`。|

### 例
以下は、"Hello,World"が正規化されているかを取得します

```cs title="AliceScript"
var a = "Hello,World";
print(a.Normalized);
```

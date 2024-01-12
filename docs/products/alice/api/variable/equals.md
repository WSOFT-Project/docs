---
title: Equals
summary: その変数ともうひとつの変数が等しいかどうかを判断します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

その変数ともうひとつの変数が等しいかどうかを判断します

```cs title="AliceScript"
namespace Alice;
virtual bool Equals(variable other);
```

|引数| |
|-|-|
|`other`| その変数と等しいか比較する変数|

|戻り値| |
|-|-|
|`bool`| 二つの変数が等しければ`true`、それ以外の場合は`false`|

### 例
以下は、ふたつの変数が正しいかどうかを検証する例です。

```cs title="AliceScript"
var a = 1;
var b = 1;
print(a == b); // 出力例 : true
```

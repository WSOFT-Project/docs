---
title: Type
summary: その変数の種類を表すオブジェクトを取得します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

その変数の種類を表す`type`を取得します

```cs title="AliceScript"
namespace Alice;
readonly type Type;
```

### 例
以下は、`a`が`number`型であるかどうかを検証します。

```cs title="AliceScript"
var a = 1;
print(a.type == number); // 出力例 : true
```

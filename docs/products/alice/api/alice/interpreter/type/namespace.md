---
title: Namespace
summary: 現在の型が所属する名前空間を取得します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript2.1

現在の型が所属する名前空間を取得します

```cs title="AliceScript"
namespace Alice;
readonly string Namespace;
```

### 例
以下は、[String](../../string/index.md)型がオブジェクトでないことを確認します

```cs title="AliceScript"
print(string.IsObject); // 出力例 : false
```

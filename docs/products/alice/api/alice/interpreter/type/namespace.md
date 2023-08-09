---
title: Namespace
long_title : type.Namespace
summary: 現在の型が所属する名前空間名を取得します
---
### 定義
名前空間:Alice.Interpreter / アセンブリ : Losetta.dll / サポート: AliceScript2.1

現在の型が所属する名前空間名を取得します

```cs title="AliceScript"
class Alice.Interpreter.Type;
readonly string Namespace;
```

### 例
以下は、[String](../../string/index.md)型の所属する名前空間を取得します。

```cs title="AliceScript"
print(string.Namespace); // 出力例 : 
```

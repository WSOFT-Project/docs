---
title: IsObject
long_title : type.IsObject
summary: 現在の型がオブジェクトであるかどうかを表す値を取得します
---
### 定義
名前空間:Alice.Interpreter / アセンブリ : Losetta.dll / サポート: AliceScript2.1

現在の型がオブジェクトであるかどうかを表す値を取得します

```cs title="AliceScript"
class Alice.Interpreter.Type;
readonly bool IsObject;
```

### 例
以下は、[String](../../string/index.md)型がオブジェクトでないことを確認します

```cs title="AliceScript"
print(string.IsObject); // 出力例 : false
```

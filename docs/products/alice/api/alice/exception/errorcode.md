---
title: ErrorCode
long_title : exception.ErrorCode
summary: 現在の例外の種類を表すエラーコードを示す値を取得します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript2.1

現在の例外の種類を表すエラーコードを示す値を取得します

```cs title="AliceScript"
namespace Alice;
readonly number ErrorCode;
```

### 例
以下は、`Throw`というメッセージをもった例外を生成し、スローします。

```cs title="AliceScript"
throw("Throw");
```

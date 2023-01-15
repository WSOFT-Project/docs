---
title: ToString
summary: 現在の例外を説明する文字列表現を取得します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の例外を説明する文字列表現を取得します

```cs title="AliceScript"
namespace Alice;
override string ToString();
```

|戻り値| |
|-|-|
|`string`| 現在の例外を説明する文字列表現|

### 説明
例外は、次の形式に成形されて返されます。

```md title="AliceScript"
[エラーコード(16進表現)]エラーの説明
```

### 例
以下は、`variable`型の文字列表現を取得します

```cs title="AliceScript"
print(variable.ToString()); // 出力例 : variable
```

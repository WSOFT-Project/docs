---
title: HasValue
summary: 変数に有効な値が代入されているかを表す値を取得します。
---
### 定義
名前空間:Alice / アセンブリ : Losetta.Runtime.dll / サポート: Alice3.0

変数に有効な値が代入されている場合、その値を取得します。

```cs title="AliceScript"
namespace Alice;
public bool HasValue { get; }
```

### 値
|`bool`|変数に有効な値が代入されている場合は`true`、`null`の場合は`false`|

### 説明
このプロパティの値が`true`の場合、[Value](./value.md)プロパティを使用してこの変数の値を取得できます。

### 例
以下は、`str`の値を取得しています。

```cs title="AliceScript"
string? str = "ABC";

// strがnullでないことを確認する
if(str.HasValue)
{
    print(str.Value);
}
```

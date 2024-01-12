---
title: Dispose
summary: 変数の値を破棄します。
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

変数の値を破棄し、`null`を代入します。

```cs title="AliceScript"
namespace Alice;
void Dispose();
```

### 説明
このメソッドは変数の値を破棄し、`null`を代入します。
このメソッドを`null`非許容な変数に使用しようとすると`0x018 VARIABLE_IS_NULL`例外が発生します。

### 例
以下は、一度定義した変数`a`を`null`にする例です。

```cs title="AliceScript"
string? a = "Hello,World";
print(a.HasValue); // 出力例 : true
a.dispose();
print(a.HasValue); // 出力例 : false
```

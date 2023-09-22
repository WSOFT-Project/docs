---
title: Dispose
summary: 変数の値を破棄し、nullにします。
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

変数の値を破棄し、`null`にします。

```cs title="AliceScript"
namespace Alice;
void Dispose();
```

### 例
以下は、一度定義した変数`a`を`null`にする例です。

```cs title="AliceScript"
var a = "Hello,World";
print(a.type); // 出力例 : String
a.dispose();
print(a.type); // 出力例 : None
```

---
title: Dispose
summary: その変数の持つ値をクリアし、値をnullにします。
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

その変数の持つ値をクリアし、値を`null`にします。

```cs title="AliceScript"
namespace Alice;
virtual void Dispose();
```


### 例
以下は、一度定義した変数`a`を`null`にする例です。

```cs title="AliceScript"
var a = "Hello,World";
print(a.type); // 出力例 : String
a.dispose();
print(a.type); // 出力例 : None
```

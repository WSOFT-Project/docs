---
title: Dispose
long_title: variable.Dispose
summary: 変数の値を破棄します。
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.General.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.General.cs)

#### DeepClone()

変数の値を破棄し、`null`を代入します。

```cs title="AliceScript"
namespace Alice;
public void Dispose();
```

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

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

---
title: Assign
long_title: variable.Assign
summary: 変数に指定した値を代入します。
---
### 定義
名前空間:Alice / アセンブリ : Losetta.Runtime.dll / サポート: Alice3.0

変数に指定した値を代入します。

```cs title="AliceScript"
namespace Alice;
void Assign(variable other);
```

|引数| |
|-|-|
|`other`| 変数に代入する値。この変数がバリアント型ではない場合、変数と同じ型である必要があります。|

### 例
以下は、数値型の変数`n`にこの関数を使用して値を代入しています。

```cs title="AliceScript"
number n = 0;
print(n);  //出力：0
// 1を代入
n.Assign(1);//出力：1
```

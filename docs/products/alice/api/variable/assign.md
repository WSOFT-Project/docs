---
title: Assign
long_title: variable.Assign
summary: 変数に指定した値を代入します。
mt_type: method
mt_title: Assign(variable)
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.General.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.General.cs)

#### Assign(variable)

変数に指定した値を代入します。

```cs title="AliceScript"
namespace Alice;
public void Assign(variable other);
```

|引数| |
|-|-|
|`other`| 変数に代入する値。この変数がバリアント型ではない場合、変数と同じ型である必要があります。|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 例
以下は、数値型の変数`n`にこの関数を使用して値を代入しています。

```cs title="AliceScript"
number n = 0;
print(n);  //出力：0
// 1を代入
n.Assign(1);//出力：1
```

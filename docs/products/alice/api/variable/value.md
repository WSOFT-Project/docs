---
title: Value
long_title: variable.Value
summary: 変数に有効な値が代入されている場合、その値を取得します。
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.General.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.General.cs)

変数に有効な値が代入されている場合、その値を取得します。

```cs title="AliceScript"
namespace Alice;
public readonly variable Value;
```

|値| |
|-|-|
|`variable`|変数に有効な値が代入されている場合、変数の表すnull非許容な値。|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 説明
このプロパティは、変数に有効な値が代入されている場合に変数の値を返します。
また、変数に有効な値が代入されていない場合(`null`をとる場合)、このプロパティの値を取得しようとすると`0x018 VARIABLE_IS_NULL`がスローされます。

このプロパティを使用して値を取り出す前に必ず[HasValue](./hasvalue.md)プロパティを使用して変数に有効な値が代入されていることを確認してください。

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

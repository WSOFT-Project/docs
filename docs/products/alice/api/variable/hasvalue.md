---
title: HasValue
long_title: variable.HasValue
summary: 変数に有効な値が代入されているかを表す値を取得します。
mt_type: property
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.General.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.General.cs)

変数に有効な値が代入されている場合、その値を取得します。

```cs title="AliceScript"
namespace Alice;
public readonly bool HasValue;
```

|値| |
|-|-|
|`bool`|変数に有効な値が代入されている場合は`true`、`null`の場合は`false`|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

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

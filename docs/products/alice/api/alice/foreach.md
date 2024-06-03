---
title: foreach
long_title : foreach 文
summary: 配列内の要素を列挙し、それぞれの要素を使用して反復処理を行います。
date : 2023-08-07
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Flow.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Alice.Core.Flow.cs)

配列内の要素を列挙し、それぞれの要素を使用して反復処理を行います。

```cs title="AliceScript"
namespace Alice;
public void foreach(Expression define in array iterator)
{
    //...
}
```

|引数| |
|-|-|
|`define`|要素を代入する変数の宣言式|
|`iterator`|反復処理を行う対象の配列|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 基本
`foreach`文は、配列型の各要素ごとに本文を実行します。
次の例では、`fibNumbers`に0から13までのフィボナッチ数が定義されているので、それを列挙します。

```cs title="AliceScript"
var fibNumbers = [0, 1, 1, 2, 3, 5, 8, 13];
foreach(var element in fibNumbers)
{
    write("{0},",element);
}
//出力例:0,1,1,2,3,5,8,13
```

要素の過不足があった場合には、[0x029](../../general/exceptions/index.md)エラーが、「foreach文はforeach(variable in array)の形をとるべきです」というメッセージで発生します。
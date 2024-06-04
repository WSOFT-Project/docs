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
public void foreach(Expression define in object iterator)
{
    //...
}
```

|引数| |
|-|-|
|`define`|要素を代入する変数の宣言式|
|`iterator`|反復処理を行う対象|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 基本
`foreach`文は、配列型の各要素ごとに本文を実行します。
次の例では、配列`ary`に定義されている要素をひとつひとつ取り出して実行します。

```cs title="AliceScript"
var ary = [2, 4, 6, 8, 10];
foreach(var element in ary)
{
    write(element);
}
//出力例:
//2
//4
//6
//8
//10
```

このとき、`iterator`は、`GetEnumerator`メソッドを実装していることが必要です。`GetEnumerator`メソッドを実装していないか、`IEnumerator`オブジェクトを返さない場合は、「foreachでループするオブジェクトは適切にGetEnumeratorメソッドを実装する必要があります」というエラーが発生します。

要素の過不足があった場合には、[0x029](../../general/exceptions/index.md)エラーが、「foreach文はforeach(variable in array)の形をとるべきです」というメッセージで発生します。
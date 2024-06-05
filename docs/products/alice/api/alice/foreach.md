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
|`iterator`|反復処理を行う対象のオブジェクト。ただし`GetEnumerator`メソッドを適切に実装している必要があります。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 基本
`foreach`文は、配列型の各要素をひとつづつ取り出して、本文の処理を行います。
次の例では、配列`ary`に定義されている要素全て表示します。

```cs title="AliceScript"
var ary = [2, 4, 6, 8, 10];
foreach(var element in ary)
{
    print(element);
}
//出力例:
//2
//4
//6
//8
//10
```

`foreach`文が`for`文と異なるところは、インデックスを使ってアクセスできないようなオブジェクトに対しても列挙を行えることです。`iterator`は、`GetEnumerator`メソッドを適切に実装していれば`foreach`文を実行できます。`GetEnumerator`メソッドを実装していないか、`IEnumerator`オブジェクトを返さない場合は、「foreachでループするオブジェクトは適切にGetEnumeratorメソッドを実装する必要があります」というエラーが発生します。条件を満たす場合、論理的には`foreach`文は以下のようなコードに展開されます。

```cs title="AliceScript"
var ary = [2, 4, 6, 8, 10];

try
{
    var enumerator = ary.GetEnumerator();

    while(enumerator.MoveNext())
    {
        var element = enumerator.Current;

        print(element);
    }
}
finally
{
    enumerator.Dispose();
}
```

ただし、パフォーマンス上の観点から、配列型および文字列型は以下のようなコードに展開されます。

```cs title="AliceScript"
var ary = [2, 4, 6, 8, 10];

for(number i = 0; i < ary.Length; i++)
{
    readonly var each_const = ary[i];

    print(element);
}
```

要素の過不足があった場合には、[0x029](../../general/exceptions/index.md)エラーが、「foreach文はforeach(variable in array)の形をとるべきです」というメッセージで発生します。
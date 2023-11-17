---
title: foreach
long_title : foreach 文
summary: 配列の要素を列挙し、それぞれの要素に対して本文を実行します。
date : 2023-08-07
---
### 定義
名前空間:Alice / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 言語構造

配列の要素を列挙し、それぞれの要素に対して本文を実行します。

```cs title="AliceScript"
namespace Alice;
void foreach(Expression foreach;);
```

|引数| |
|-|-|
|`foreach`| `foreach`式|

### 基本
`foreach`文は、配列型あるいは対応しているその他の型内の要素ごとに、本文を実行します。
次の例では、`fibNumbers`にフィボナッチ数列が定義されているので、それを列挙します。

```cs title="AliceScript"
var fibNumbers = [0, 1, 1, 2, 3, 5, 8, 13];
foreach(var element in fibNumbers)
{
    write("{0},",element);
}
//出力例:0,1,1,2,3,5,8,13
```

要素の過不足があった場合には、[0x029](../../general/exceptions/index.md)エラーが、「foreach文はforeach(variable in array)の形をとるべきです」というメッセージで発生します。
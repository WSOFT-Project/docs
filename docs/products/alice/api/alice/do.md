---
title: do
long_title : do 文
summary: 条件に応じて本文を一度以上実行します
date : 2023-08-07
mt_type: function
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Flow.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Alice.Core.Flow.cs)

条件に応じて本文を一度以上実行します。

```cs title="AliceScript"
namespace Alice;
public void do
{

}
while(Expression condition);
```

|引数| |
|-|-|
|`condition`|ループを継続するかどうかを表す条件式。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 基本
`do`文は、指定された条件式が`true`と評価されている間、本文を実行します。
ループの後に条件式が評価されるので、ループは少なくとも1回は実行されます。
このため、`do`文は、0回以上実行される[while](./while.md)文とは異なります。

次の例では、`do`文を使用して`0`から`5`までをカウントします。

```cs title="AliceScript"
var n = 0;
do
{
    Console.Write(n);
    n++;
} while (n < 5);
// 出力例:012345
```
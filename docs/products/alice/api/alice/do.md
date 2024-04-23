---
title: do
long_title : do 文
summary: 条件に応じて本文を一度以上実行します
date : 2023-08-07
---
### 定義
名前空間:Alice / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 言語構造

条件に応じて本文を一度以上実行します。

```cs title="AliceScript"
namespace Alice;
public void do while(Exception condition);
```

|引数| |
|-|-|
|`condition`|ループを継続するかどうかを表す条件式。|

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
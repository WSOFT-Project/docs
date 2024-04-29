---
title: while
long_title : while 文
summary: 条件に応じて本文を0回以上実行します
date : 2023-08-07
---
### 定義
名前空間:Alice / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 言語構造

条件に応じて本文を0回以上実行します。

```cs title="AliceScript"
namespace Alice;
public void while(Expression condition)
{
    //...
}
```

|引数| |
|-|-|
|`condition`|ループを継続するかどうかを表す条件式。|

### 基本
`while`文は、指定された条件式が`true`と評価されている間、本文を実行します。
ループ前に条件式を評価するため、`while`文は実行されない可能性があります。
このため、`while`文は、1回以上実行される[do](./do.md)文とは異なります。

### 例
次の例では、`while`文を使用して`0`から`4`までをカウントします。

```cs title="AliceScript"
int n = 0;
while (n < 5)
{
    print(n);
    n++;
}
//出力例:01234
```

次の例は、無限に`Hello,World`が出力されます。

```cs title="AliceScript"
while(true)
{
    print("Hello,World");
}
```
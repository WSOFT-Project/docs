---
title: if
long_title : if 文
summary: 指定された条件式が真と評価されたときに本文を実行します。
date : 2023-08-07
---
### 定義
名前空間:Alice / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 言語構造

指定された条件式が真と評価されたときに本文を実行します。

```cs title="AliceScript"
namespace Alice;
void if(bool condition);
```

|引数| |
|-|-|
|`condition`|本文を実行するかどうかを表す条件。|

### 基本
`if`文は、指定された条件式が`true`と評価されたときのみに本文を実行します。

次の例では、`fizz`関数に与えられた値が`3`の倍数であるときに`Fizz`を表示します。

```cs title="AliceScript"
void fizz(number num)
{
    if(num % 3 == 0)
    {
        print("Fizz");
    }
}
fizz(3);//出力例:Fizz
fizz(5);//出力無し
```

### if-else文
`if-else`文は、指定された条件式が`true`と評価されれば`if`文中の文が、それ以外の場合は`else`文中の文が実行されます。

次の例では、`buzz`関数に与えられた値が`5`の倍数であるときに`Buzz`を表示し、それ以外の場合はその数を表示します。

```cs title="AliceScript"
void buzz(number num)
{
    if(num % 3 == 0)
    {
        print("Fizz");
    }
    else
    {
        print(num);
    }
}
buzz(3);//出力例:3
buzz(5);//出力例:Buzz
```

また、`if-else`文は入れ子にでき、`else if`のような形式でも使用できます。

次の例では、`fizzBuzz`関数に与えられた値が`15`の倍数であるときに`FizzBuzz`を表示し、`3`の倍数であるときは`Fizz`を表示します。さらに`5`の倍数であるときには`Buzz`を表示し、それ以外の場合はその数を表示します。

```cs title="AliceScript"
void fizzBuzz(number num)
{
    if(num % 15 == 0)
    {

    }
    else if(num % 3 == 0)
    {
        print("Fizz");
    }
    else if(num % 5 == 0)
    {
        print("Buzz");
    }
    else
    {
        print(num);
    }
}
fizzBuzz(3);//出力例:Fizz
fizzBuzz(5);//出力例:Buzz
fizzBuzz(14);//出力例:14
fizzBuzz(15);//出力例:FizzBuzz
```
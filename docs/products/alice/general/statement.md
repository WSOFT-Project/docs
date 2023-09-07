---
title: 文
summary: この記事では、AliceScriptにおける文と、基本構文について説明します。
date : 2023-08-07
---

プログラムが実行する処理は、**文**として表されます。
一般的な文には、変数の宣言や値の代入、関数の呼び出し、ループ処理、条件分岐などがありますが、これがすべてではありません。
プログラム内で文が実行される順序は、フローと呼ばれます。フローは通常上から下へと進みますが、これから説明する構文によって、実行するたびに変わる可能性があります。

文は、セミコロン（`;`）で終わる一行のコードか、1つのブロックを形成する一連のコードで構成されます。文は波かっこ（`{}`）で囲み、入れ子にできます。
たとえば、次の例は、2つの文を入れ子にしています。

```cs title="AliceScript"
function Hoge(number num)
{
    if(num > 3)
    {
        print("Hoge!");
    }
}
```

### 文の種類
AliceScriptの文は、次のように分類できます。

- 宣言文
- 式
- 条件分岐文
- 反復文
- ジャンプ文
- 例外処理文
- `lock`文
- 空の文

### 宣言文
宣言文は、新しい変数または定数を定義します。変数宣言では、必要に応じて変数に値を代入できるいっぽう、定数宣言では常に値の代入が必要です。

次の例では、値を指定して変数を宣言する場合としない場合の例と、定数を宣言しています。

```cs title="AliceScript"
// 変数宣言
var area;
var radius = 2;

// 定数宣言
const pi = 3.14159;
```

`using`宣言文を使用すると、その型の完全修飾名を使用せずに、現在のスクリプトで名前空間で定義された関数やクラスを使用できます。詳細については、[using](../api/alice/using.md)を参照してください。
次の例では、現在のスクリプトに`Alice.IO`への参照を追加しています。

```cs title="AliceScript"
using Alice.IO;
```
### 式
式は、関数を呼び出して値を計算したり、変数に値を格納したりします。
詳細については、[式](./expression.md)を参照してください。

次の例では、演算、変数への値の代入と関数の呼び出しを行っています。

```cs title="AliceScript"
// 代入と演算
area = pi * (radius * radius);

// 関数の呼び出し
print(area);
```

### 条件分岐文
条件分岐文を使用すると、ある条件に応じて、コードの実行場所を分岐できます。詳細については、次の項目を参照してください。

- [if](../api/alice/if.md)
- [switch](../api/alice/switch.md)

次の例では、`fizzBuzz`関数に与えられた値が`15`の倍数であるときに`FizzBuzz`を表示し、`3`の倍数であるときは`Fizz`を表示し、さらに`5`の倍数であるときには`Buzz`を表示しそれ以外の場合はその数を表示します。

```cs title="AliceScript"
function fizzBuzz(number num)
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
### 反復文
反復文を使用すると、配列をループ処理したり、指定された条件が満たされるまで同じ文を繰り返し実行したりできます。詳細については、次の項目を参照してください。

- [for](../api/alice/for.md)
- [foreach](../api/alice/foreach.md)
- [do](../api/alice/do.md)
- [while](../api/alice/while.md)

次の例では、`for`文を使用して、`0`から`2`までをカウントしています。

```cs title="AliceScript"
var i = 0;
for(;i < 0; i++)
{
    write(i);
}
//出力例:012
```
### ジャンプ文
ジャンプ文は、別の場所に制御を移動させます。詳細については、次の項目を参照してください。

- [break](../api/alice/break.md)
- [continue](../api/alice/continue.md)
- [return](../api/alice/return.md)

次の例では、引数が`3`以上であった場合には、`Hello,World`を表示しません。

```cs title="AliceScript"
function test(number num)
{
    if(num > 3)
    {
        return;
    }
    print("Hello,World");
}
```
### 例外処理文
例外処理文を使用すると、実行時に発生するエラーや例外状態から適切に回復できます。詳細については、次の項目を参照してください。

- throw
- try

### lock文
`lock`文を使用すると、一度に1つのスレッドしかコードにアクセスしないように制限できます。
詳細については、[lock](../api/alice/lock.md)を参照してください。

次の例では、10秒間の間、メインスレッドで`item`に`2`を代入することができません。

```cs title="AliceScript"
using Alice.Threading;

var item = 0;

task_run(delegate(){
    item = 1;
    delay(10000);
});
item = 2;
print(item);
```

### 空の文
空の文は、`{...}`または`(...)`のように関数名を使用せずにかっこで囲むか、`block`文を使用すると、空の文になります。この文はなにも実行しませんが、ブロックスコープを作成する目的などで使用できます。

次の例では、ブロックスコープを使って変数にアクセスできる場所を制限しています。

```cs title="AliceScript"
{
    var a = 0;
}
print(a);//これはエラー
```
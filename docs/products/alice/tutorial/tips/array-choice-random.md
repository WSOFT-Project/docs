---
title: 配列の要素をランダムに選択する
long_title: Tips:配列の要素をランダムに選択する
summary: この記事では、配列の要素をランダムに選択する関数を作ってみます。
date: 2024-11-25
---

## 乱数を生成する
乱数を生成するには、Alice.Random名前空間の[rand](../../api/alice/random/rand.md)関数を使うのが便利です。

`rand`関数には、返す値の上限を指定できます。
次の例は、`rand`関数を使って0から9までのランダムな値をたくさん表示するコードです。

```cs title="AliceScript"
using Alice.Random;

print("0~9までの乱数を生成します。");
print("終わる時はCtrl + Cを押してください。");

while(true)
{
    number num = random(10);
    write($"{num}, ");
    delay(100);
}
```

## 配列の要素をランダムに選ぶ
上記の例を活用して、配列の要素をランダムに選ぶ関数を作ってみます。
返す値の上限には、配列の長さを指定します。これで、0~配列の末尾までのランダムな数字が選べるというわけです。

```cs title="AliceScript"
using Alice.Random;

variable aryRandomChoice(array ary)
{
    number ind = rand(ary.Length);
    return ary[ind];
}
```

**使用例**

ここで作った関数は以下のように使えます。

```cs title="AliceScript"
var fortune = ["大吉", "中吉", "吉"];

string choseOne = aryRandomChoice();
print(choseOne);
```

拡張メソッドを使って作ってみましょう。

```cs title="AliceScript"
using Alice.Random;

variable randomChoice(this array ary)
{
    number ind = rand(ary.Length);
    return ary[ind];
}
```

**使用例**

```cs title="AliceScript"
var fortune = ["大吉", "中吉", "吉"];

string choseOne = fortune.randomChoice();
print(choseOne);
```

---
title: 数値を切り捨て、切り上げ、四捨五入する
summary: この記事では、AliceScriptで数値を整数に丸める方法を説明します。
long_title: Tips:数値を切り捨て、切り上げ、四捨五入する
date: 2024-08-14
---

AliceScriptで数値を丸めるには、[Alice.Math名前空間](../../api/alice/math/index.md)の関数を使用します。

## 数値を切り捨てる
小数点以下を切り捨てるには、[math_floor](../../api/alice/math/math_floor.md)関数または[math_truncate](../../api/alice/math/math_truncate.md)関数を使用します。次の例をご覧ください。

```cs title="AliceScript"
using Alice.Math;

number x = 1.2;

number i = math_floor(x);

print(i); //出力: 1

i = math_truncate(x);

print(i); //出力: 1
```

上記の例のように、どちらの関数も、正の値を丸めるときは同じ挙動をします。ただし、負の値を丸めるとき、より大きい方に丸めるか、より小さい方に丸めるかで挙動が異なります。次の例をご覧ください。

```cs title="AliceScript"
using Alice.Math;

number x = -1.2;

number i = math_floor(x);

print(i); //出力: 2

i = math_truncate(x);

print(i); //出力: 1
```

## 数値を切り上げる
小数点以下を切り上げるには、[math_ceiling](../../api/alice/math/math_ceiling.md)関数を使用します。次の例をご覧ください。


```cs title="AliceScript"
using Alice.Math;

number x = 1.2;

number i = math_ceiling(x);

print(i); //出力: 2
```

## 数値を四捨五入する
小数点以下で四捨五入するには、[math_round](../../api/alice/math/math_round.md)関数を使用します。

この関数で行える四捨五入には、銀行型丸めと通常の四捨五入のふたつがあります。はじめに、通常の四捨五入を説明します。次の例をご覧ください。

```cs title="AliceScript"
using Alice.Math;

number x = 1.5;

number i = math_round(x, true);

print(i); //出力:2

x = 2.5;

i = math_round(x, true);

print(i); //出力:3
```

次に、銀行型丸めについて説明します。銀行型丸めの挙動はほとんど通常の四捨五入と同じですが、端数が0.5の場合に銀行型丸めを行った結果は、通常の四捨五入とは異なる可能性があります。四捨五入では0.5を常に切り上げますが、銀行型丸めでは丸めた結果が偶数になるように丸めます。例えば 1.5 をRoundメソッドで丸めると2になりますが、2.5を丸めると3ではなく、2になります。次の例をご覧ください。

```cs title="AliceScript"
using Alice.Math;

number x = 1.5;

number i = math_round(x, null);

print(i); //出力:2

x = 2.5;

i = math_round(x, null);

print(i); //出力:2
```

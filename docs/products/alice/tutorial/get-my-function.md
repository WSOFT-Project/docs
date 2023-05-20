---
title : 自分自身の関数を取得する
summary : この記事では、StackTraceを使用して自分自身の関数を取得する方法を説明します。
---

### 概要
AliceScript2.3から、StackTrace機能が導入されました。この機能を上手く使用すると、自分自身の関数を[デリゲート](../api/delegate/index.md)として取得できます。

次の例では、`myFunction()`自身の関数名を取得し、出力します。


### サンプルコード

```cs title="main.alice"
function myFunction()
{
  var script = Alice.Interpreter.Interpreter_GetScript();
  
  var func = script.StackTrace.Last;
  print(func.Name); // 出力例 : myFunction
}

myFunction();
```

!!!important "注意"
    別の関数の引数としてスタックトレースを取得しないでください。別の関数もスタックトレースに追加されてしまいます。
    たとえば、`hoge(script.StackTrace);`は`var trace=script.StackTrace;hoge(trace);`のように置き換えてください。
---
title : new 演算子
summary : new演算子は、型の新しいインスタンスを作成します。
date : 2024-04-09
---

型の新しいインスタンスを作成するには、`new`演算子を使用して型のコンストラクターのひとつを呼び出します。次の例では、[StopWatch](../../api/alice/diagnostics/stopwatch/index.md)オブジェクトを作成しています。

```cs title="AliceScript"
using Alice.Diagnostics;

var stw = new StopWatch();
```

次の例では、[Interop_GetType](../../api/alice/interop/interop_gettype.md)関数を使用して、.NETのオブジェクトを作成しています。

```cs title="AliceScript"
using Alice.Interop;

// Complex型の情報をcomplexに代入する
var Complex = interop_GetType("System.Numerics.Complex","System.Runtime.Numerics");

// 代入した情報を使ってComplex型を初期化する
var x = new Complex(1,2);
```
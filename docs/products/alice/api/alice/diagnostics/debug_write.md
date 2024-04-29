---
title: debug_write
summary: 指定された文字列または、オブジェクトの文字列表現をデバッグ出力に書き込みます。
date : 2021-11-09
---
### 定義
名前空間:Alice.Diagnostics / アセンブリ : Losetta.Runtime.dll / サポート: AliceScriptRC2

属性: 関数

#### debug_write(string)

指定された文字列をデバッグ出力に書き込みます。

```cs title="AliceScript"
namespace Alice.Diagnostics;
public void debug_write(string text);
```

|引数| |
|-|-|
|`text`| 出力したい文字列|

#### debug_write(variable)

指定されたオブジェクトの文字列表現をデバッグ出力に書き込みます。

```cs title="AliceScript"
namespace Alice.Diagnostics;
public void debug_write(variable value);
```

|引数| |
|-|-|
|`value`| 出力したい変数|

#### debug_write(string,params variable)

与えられた複合書式指定子`format`を使用して後続の変数を成形し、デバッグ出力に書き込みます。

```cs title="AliceScript"
namespace Alice.Diagnostics;
public void debug_write(string format,params variable args);
```

|引数| |
|-|-|
|`format`| 出力の成形に用いる複合書式指定子|
|`params args`| `format`を使用して書き込む変数。|

### 例
次の例は、debug_write関数を使用してHello,Worldを表示するコードです。
この出力は、デバッグ時にのみ表示されます。

```cs title="AliceScript"
using Alice.Diagnostics;

debug_write("Hello,World");
```

次の例は、aとbの加算の結果を表示するコードです。

```cs title="AliceScript"
using Alice.Diagnostics;

var a = 1;
var b = 2;
debug_write("a+b="+(a+b));

//出力:a+b=3
```

上記の例は、複合書式指定子を使用して、次のように記述することも可能です。

```cs title="AliceScript"
using Alice.Diagnostics;

var a = 1;
var b = 2;

debug_write("a+b={0}",a+b);
```

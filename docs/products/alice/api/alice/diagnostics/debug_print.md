---
title: debug_print
summary: 指定された文字列または、オブジェクトの文字列表現をデバッグ出力に書き込み、続けて現在の環境で使用されている改行文字を書き込みます。
date : 2021-11-09
mt_type: function
mt_overloads: 3
mt_title: debug_print(string)
mt_summary: 指定された文字列をデバッグ出力に書き込み、続けて現在の環境で使用されている改行文字を書き込みます。
mt_title: debug_print(variable)
mt_summary: 指定されたオブジェクトの文字列表現をデバッグ出力に書き込み、続けて現在の環境で使用されている改行文字を書き込みます。
mt_title: debug_print(string,params variable)
mt_summary: 与えられた複合書式指定子`format`を使用して後続の変数を成形し、デバッグ出力に書き込み、続けて現在の環境で使用されている改行文字を書き込みます。
---
### 定義
名前空間: Alice.Diagnostics<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Diagnostics.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Diagnostics.cs)

#### debug_print(string)

指定された文字列をデバッグ出力に書き込み、続けて現在の環境で使用されている改行文字を書き込みます。

```cs title="AliceScript"
namespace Alice.Diagnostics;
public void debug_print(string text);
```

|引数| |
|-|-|
|`text`| 出力したい文字列|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

#### debug_print(variable)

指定されたオブジェクトの文字列表現をデバッグ出力に書き込み、続けて現在の環境で使用されている改行文字を書き込みます。

```cs title="AliceScript"
namespace Alice.Diagnostics;
public void debug_print(variable value);
```

|引数| |
|-|-|
|`value`| 出力したい変数|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|


#### debug_print(string,params variable)

与えられた複合書式指定子`format`を使用して後続の変数を成形し、デバッグ出力に書き込み、続けて現在の環境で使用されている改行文字を書き込みます。

```cs title="AliceScript"
namespace Alice.Diagnostics;
public void debug_print(string format, params variable args);
```

|引数| |
|-|-|
|`format`| 出力の成形に用いる複合書式指定子|
|`params args`| `format`を使用して書き込む変数。|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 例
次の例は、debug_print関数を使用してHello,Worldを表示するコードです。
この出力は、デバッグ時にのみ表示されます。

```cs title="AliceScript"
using Alice.Diagnostics;

debug_print("Hello,World");
```

次の例は、aとbの加算の結果を表示するコードです。

```cs title="AliceScript"
using Alice.Diagnostics;

var a = 1;
var b = 2;
debug_print("a+b="+(a+b));

//出力:a+b=3
```

上記の例は、複合書式指定子を使用して、次のように記述することも可能です。

```cs title="AliceScript"
using Alice.Diagnostics;

var a = 1;
var b = 2;

debug_print("a+b={0}",a+b);
```

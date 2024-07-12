---
title: debug_writeIf
summary: 条件が真であるときに、指定された文字列またはオブジェクトの文字列表現をデバッグ出力に書き込みます。
date : 2021-11-09
mt_type: function
mt_overloads: 3
mt_title: debug_writeIf(bool,string)
mt_summary: 条件が真であるときに、指定された文字列をデバッグ出力に書き込みます。
mt_title: debug_writeIf(bool,variable)
mt_summary: 条件が真であるときに、指定されたオブジェクトの文字列表現をデバッグ出力に書き込みます。
mt_title: debug_writeIf(bool,string,params variable)
mt_summary: 条件が真であるときに、与えられた複合書式指定子`format`を使用して後続の変数を成形し、デバッグ出力に書き込みます。
---

### 定義
名前空間: Alice.Diagnostics<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Diagnostics.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Diagnostics.cs)

#### debug_writeIf(bool,string)

条件が真であるときに、指定された文字列をデバッグ出力に書き込みます。

```cs title="AliceScript"
namespace Alice.Diagnostics;
public void debug_writeIf(bool condition, string text);
```

|引数| |
|-|-|
|`condition`| 評価する条件。これが`true`の場合、デバッグ出力に書き込みます。|
|`text`| 出力したい文字列|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

#### debug_writeIf(bool,variable)

条件が真であるときに、指定されたオブジェクトの文字列表現をデバッグ出力に書き込みます。

```cs title="AliceScript"
namespace Alice.Diagnostics;
public void debug_writeIf(bool condition, variable value);
```

|引数| |
|-|-|
|`condition`| 評価する条件。これが`true`の場合、デバッグ出力に書き込みます。|
|`value`| 出力したい変数|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

#### debug_writeIf(bool,string,params variable)

条件が真であるときに、与えられた複合書式指定子`format`を使用して後続の変数を成形し、デバッグ出力に書き込みます。

```cs title="AliceScript"
namespace Alice.Diagnostics;
public void debug_writeIf(bool condition, string format,params variable args);
```

|引数| |
|-|-|
|`condition`| 評価する条件。これが`true`の場合、デバッグ出力に書き込みます。|
|`format`| 出力の成形に用いる複合書式指定子|
|`params args`| `format`を使用して書き込む変数。|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
次の例は、debug_writeIf関数を使用してHello,Worldを表示するコードです。
この出力は、デバッグ時にのみ表示されます。

```cs title="AliceScript"
using Alice.Diagnostics;

debug_writeIf(true,"Hello,World");
```

次の例では、デバッグ出力に何も書き込みません。

```cs title="AliceScript"
using Alice.Diagnostics;

debug_writeIf(false,"Hello,World");
```

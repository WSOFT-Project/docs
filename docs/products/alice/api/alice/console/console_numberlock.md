---
title: console_numberLock
summary: NumLockキーがオンかどうかを表す値を取得します。
date : 2024-06-06
mt_type: value
---

### 定義
名前空間: Alice.Console<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Console.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Console.cs)

NumLockキーがオンかどうかを表す値を取得します。

```cs title="AliceScript"
namespace Alice.Console;

@supportedFor("windows")
public readonly bool console_numberLock;
```

### 値
|値| |
|-|-|
|`bool`|NumLockキーがオンになっている場合は`true`、そうでない場合は`false`|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0、4|
    |AliceSister|3.0、4|
    |Losetta|0.10、0.11|

### 例
次の例では、NumLockキーがオンかどうかを表示します。

```cs title="AliceScript"
using Alice.Console;

if(console_numberLock)
{
    print("NumLockキーがオンになっています。");
}
else
{
    print("NumLockキーはオフになっています。");
}
```

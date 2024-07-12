---
title: console_capsLock
summary: CapsLockキーがオンかどうかを表す値を取得します。
date : 2024-06-06
mt_type: value
---

### 定義
名前空間: Alice.Console<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Console.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Console.cs)

CapsLockキーがオンかどうかを表す値を取得します。

```cs title="AliceScript"
namespace Alice.Console;

@supportedFor("windows")
public readonly bool console_capsLock;
```

### 値
|値| |
|-|-|
|`bool`|CapsLockキーがオンになっている場合は`true`、そうでない場合は`false`|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 例
次の例では、CapsLockキーがオンかどうかを表示します。

```cs title="AliceScript"
using Alice.Console;

if(console_capsLock)
{
    print("CapsLockキーがオンになっています。");
}
else
{
    print("CapsLockキーはオフになっています。");
}
```

---
title: lock
long_title : lock文
summary: リソースへの排他的なアクセスを保証します。
mt_type: function
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Flow.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Alice.Core.Flow.cs)

リソースへの排他的なアクセスを保証します。

```cs title="AliceScript"
namespace Alice;
public void lock(variable item)
{
    //...
}
```

|引数| |
|-|-|
|`item`|ロックする変数|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 説明
`lock`文は、指定した変数に対する相互排他ロックを取得し、本文を実行してからロックを解放します。ロックが保持されている間、他のスレッドはその変数へのアクセスをブロックされてロックを取得できず、ロックが解放されるまで待機します。`lock`文を使えば常に、ひとつのスレッドでのみ実行できるコードを書くことができます。

### 例
次の例では、10秒間の間、メインスレッドで`item`に`2`を代入することができません。

```cs title="AliceScript"
using Alice.Threading;

var item = 0;

task_run(()=>{
    item = 1;
    delay(10000);
});
item = 2;
print(item);
```

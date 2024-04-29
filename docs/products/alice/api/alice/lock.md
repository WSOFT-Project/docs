---
title: lock
long_title : lock文
summary: リソースへの排他的なアクセスを保証します。
---
### 定義
名前空間:Alice / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

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

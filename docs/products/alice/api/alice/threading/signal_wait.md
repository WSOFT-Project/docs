---
title: signal_wait
summary: シグナルを受け取るまで、現在のスレッドをブロックします。
---
### 定義
名前空間:Alice.Threading / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

シグナルを受け取るまで、現在のスレッドをブロックします。

```cs title="AliceScript"
namespace Alice.Net;
public bool signal_wait();
```

|戻り値| |
|-|-|
|`bool`|現在のイベントの状態を表す`bool`値。|

### 例
次の例では、 シグナルを使用して、メイン スレッドがブロックされたスレッドを通知し、スレッドがタスクを完了するまで待機できるようにします。

```cs title="AliceScript"
using Alice.Threading;

task_run(delegate(){
    delay(300);
    print("Hello,World");
    signal();
});
signal_wait();
print("job completed!");
```
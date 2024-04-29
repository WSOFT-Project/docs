---
title: signal
summary: イベントの状態をシグナル状態に設定し、待機している 1 つ以上のスレッドが進行できるようにします。
---
### 定義
名前空間:Alice.Threading / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

#### signal()

イベントの状態をシグナル状態に設定し、待機している 1 つ以上のスレッドが進行できるようにします。

```cs title="AliceScript"
namespace Alice.Net;
public bool signal();
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
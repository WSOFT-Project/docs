---
title: signal
summary: イベントの状態をシグナル状態に設定し、待機している 1 つ以上のスレッドが進行できるようにします。
mt_type: function
mt_title: signal()
---

### 定義
名前空間: Alice.Threading<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Threading.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Threading.cs)

#### signal()

イベントの状態をシグナル状態に設定し、待機している 1 つ以上のスレッドが進行できるようにします。

```cs title="AliceScript"
namespace Alice.Net;
public bool signal();
```

|戻り値| |
|-|-|
|`bool`|現在のイベントの状態を表す`bool`値。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

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
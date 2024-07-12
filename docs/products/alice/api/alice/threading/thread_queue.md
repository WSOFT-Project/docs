---
title: thread_queue
summary: コードを実行するためのキューに置きます。コードは、スレッド プール スレッドが使用可能になったときに実行されます。
mt_type: function
mt_title: thread_queue(delegate,params variable)
---

### 定義
名前空間: Alice.Threading<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Threading.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Threading.cs)

#### thread_queue(delegate,params variable)

コードを実行するためのキューに置きます。コードは、スレッド プール スレッドが使用可能になったときに実行されます。

```cs title="AliceScript"
namespace Alice.Net;
public void thread_queue(delegate task,params variable args);
```

|引数| |
|-|-|
|`task`|実行するコードを表す[デリゲート](../../delegate/index.md)。|
|`args`|`task`に渡す引数。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
次の例では、タスク`task`を作成して、それを ThreadProc キューに入れ、スレッドが使用可能になったときに実行します。 このオーバーロードでは、タスク情報は指定されません。 したがって、メソッドで使用できる ThreadProc 情報は、メソッドが属するオブジェクトに限定されます。

```cs title="AliceScript"
using Alice.Threading;

var job = delegate(){
    print("Hello,World");
}
thread_queue(job);
```
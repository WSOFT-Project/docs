---
title: thread_queue
summary: コードを実行するためのキューに置きます。コードは、スレッド プール スレッドが使用可能になったときに実行されます。
---
### 定義
名前空間:Alice.Threading / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

コードを実行するためのキューに置きます。コードは、スレッド プール スレッドが使用可能になったときに実行されます。

```cs title="AliceScript"
namespace Alice.Net;
void thread_queue(delegate job,params variable args);
```

|引数| |
|-|-|
|`job`|実行するコードを表す`delegate`。|
|`args`|`job`に渡す引数。

### 例
次の例では、タスク`job`に作成して、それを ThreadProc キューに入れ、スレッドが使用可能になったときに実行します。 このオーバーロードでは、タスク情報は指定されません。 したがって、メソッドで使用できる ThreadProc 情報は、メソッドが属するオブジェクトに限定されます。

```cs title="AliceScript"
using Alice.Threading;

var job = delegate(){
    print("Hello,World");
}
thread_queue(job);
```
---
title: task_run
summary: 指定された処理内容を別スレッドで実行します。
---
### 定義
名前空間:Alice.Threading / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

#### task_run(delegate,params variable)

指定された処理内容を別スレッドで実行します。

```cs title="AliceScript"
namespace Alice.Net;
public void task_run(delegate task, params variable args);
```

|引数| |
|-|-|
|`task`|実行するタスクを表す[デリゲート](../../delegate/index.md)。|
|`args`|`task`に渡す引数。|

### 例
次の例では、タスク`task`を作成して、それを別のスレッドで実行します。

```cs title="AliceScript"
using Alice.Threading;

var job = delegate(){
    print("Hello,World");
}
task_run(job);
```

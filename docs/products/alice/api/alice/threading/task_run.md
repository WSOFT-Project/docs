---
title: task_run
summary: 指定された処理内容を別スレッドで実行します。
---
### 定義
名前空間:Alice.Threading / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

指定された処理内容を別スレッドで実行します。

```cs title="AliceScript"
namespace Alice.Net;
public void task_run(delegate job,params variable args);
```

|引数| |
|-|-|
|`job`|実行するコードを表す`delegate`。|
|`args`|`job`に渡す引数。

### 例
次の例では、タスク`job`に作成して、それを別のスレッドで実行します。

```cs title="AliceScript"
using Alice.Threading;

var job = delegate(){
    print("Hello,World");
}
task_run(job);
```

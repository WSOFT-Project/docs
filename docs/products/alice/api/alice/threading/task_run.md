---
title: task_run
summary: 指定された処理内容を別スレッドで実行します。
---

### 定義
名前空間: Alice.Threading<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Threading.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Threading.cs)

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

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
次の例では、タスク`task`を作成して、それを別のスレッドで実行します。

```cs title="AliceScript"
using Alice.Threading;

var job = delegate(){
    print("Hello,World");
}
task_run(job);
```

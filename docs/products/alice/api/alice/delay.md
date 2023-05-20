---
title: delay
summary: 指定した時間の間プログラムを中断します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

無期限にプログラムを中断します

```cs title="AliceScript"
namespace Alice;
void delay();
```

指定した時間の間プログラムを中断します

```cs title="AliceScript"
namespace Alice;
void delay(number timeout);
```

|引数| |
|-|-|
|`timeout`|プログラムが中断される時間のミリ秒。この値が0である場合は、スレッドは自らに割り当てられた時間を放棄し、実行する準備が出来ている同じ優先順位の他のスレッドに渡します。優先順位が同じで他に実行する準備ができているスレッドが存在しない場合は、プログラムは終了されません。|

### 例
以下は、`delay`関数を使用してプログラムを10秒停止します。

```cs title="AliceScript"
delay(10000);
```

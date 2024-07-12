---
title: Reset
long_title : StopWatch.Reset
summary: ストップウォッチの計測を停止して、経過時間をゼロにリセットします。
date : 2023-08-09
mt_type: method
mt_name: Reset()
---
### 定義
名前空間:Alice.Interpreter / アセンブリ : Losetta.dll / サポート: AliceScript2.1

ストップウォッチの計測を停止して、経過時間をゼロにリセットします。

```cs title="AliceScript"
class Alice.Diagnostics.StopWatch;
void Reset();
```

### 例
次の例では、StopWatchクラスを使用して特定の処理にかかった時間を計測し、最後にリセットしています。

```cs title="AliceScript"
using Alice.Diagnostics;

var stw = new StopWatch();
stw.Start();

//なにか時間のかかる処理（ここではdelayを使用）
delay(3000);

stw.Stop();
print("処理にかかった時間：{0}ミリ秒",stw.ElapsedMilliseconds);

stw.Reset();
```
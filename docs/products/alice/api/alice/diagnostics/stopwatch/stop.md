---
title: Stop
long_title : StopWatch.Stop
summary: ストップウォッチの計測を停止します。
date : 2023-08-09
---
### 定義
名前空間:Alice.Interpreter / アセンブリ : Losetta.dll / サポート: AliceScript2.1

ストップウォッチの計測を開始または停止します。

```cs title="AliceScript"
class Alice.Diagnostics.StopWatch;
void Stop();
```

### 例
次の例では、StopWatchクラスを使用して特定の処理にかかった時間を計測する方法を示します。

```cs title="AliceScript"
using Alice.Diagnostics;

var stw = new StopWatch();
stw.Start();

//なにか時間のかかる処理（ここではdelayを使用）
delay(3000);

stw.Stop();
print("処理にかかった時間：{0}ミリ秒",stw.ElapsedMilliseconds);
```
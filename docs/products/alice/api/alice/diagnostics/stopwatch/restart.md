---
title: Restart
long_title : StopWatch.Restart
summary: ストップウォッチの計測を停止して、経過時間をゼロにリセットしたあとで、もう一度計測を開始します。
date : 2023-08-09
mt_type: method
mt_name: Restart()
---
### 定義
名前空間:Alice.Interpreter / アセンブリ : Losetta.dll / サポート: AliceScript2.1

ストップウォッチの計測を停止して、経過時間をゼロにリセットしたあとで、もう一度計測を開始します。

```cs title="AliceScript"
class Alice.Diagnostics.StopWatch;
void Restart();
```

### 例
次の例では、StopWatchクラスを使用して特定の処理にかかった時間を2回計測しています。

```cs title="AliceScript"
using Alice.Diagnostics;

var stw = new StopWatch();
stw.Start();

//なにか時間のかかる処理（ここではdelayを使用）
delay(3000);

stw.Stop();
print("1度目の処理にかかった時間：{0}ミリ秒",stw.ElapsedMilliseconds);

stw.Restart();

//なにか時間のかかる処理（ここではdelayを使用）
delay(3000);

stw.Stop();
print("2度目の処理にかかった時間：{0}ミリ秒",stw.ElapsedMilliseconds);
```
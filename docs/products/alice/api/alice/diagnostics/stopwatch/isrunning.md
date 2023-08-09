---
title: IsRunning
long_title : StopWatch.IsRunning
summary: 現在のストップウォッチが時間を計測中かどうかを表す値を取得します。
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript2.1

現在のストップウォッチが時間を計測中かどうかを表す値を取得します。

```cs title="AliceScript"
class Alice.Diagnostics.StopWatch;
readonly bool IsRunning;
```

|プロパティの値| |
|-|-|
|`bool`| 現在のストップウォッチが時間を計測中の場合は`true`、それ以外の場合は`false`。このプロパティは読み取り専用です。|

### 例
次の例では、StopWatchクラスを使用して特定の処理にかかった時間を計測する方法を示します。

```cs title="AliceScript"
using Alice.Diagnostics;

var stw = new StopWatch();
stw.Start();

print("ストップウォッチの状態：{0}",stw.IsRunning ? "計測中" : "待機中");
//なにか時間のかかる処理（ここではdelayを使用）
delay(3000);

stw.Stop();
print("ストップウォッチの状態：{0}",stw.IsRunning ? "計測中" : "待機中");
print("処理にかかった時間：{0}ミリ秒",stw.ElapsedMilliseconds);
```
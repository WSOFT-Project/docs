---
title: StopWatch
long_title : StopWatch クラス
summary: 経過時間を計測することができるストップウォッチを提供します。
date : 2023-08-09
---
### 定義
名前空間:Alice.Diagnostics / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

経過時間を計測することができるストップウォッチを提供します。

```cs title="AliceScript"
namespace Alice.Diagnostics;
public class StopWatch;
```

### 説明
このクラスを使用して、特定間隔において経過した時間、または複数の間隔で経過した時間の合計を測定できます。
通常このクラスは、Startメソッドを使用して開始し、Stopメソッドで停止しながら、ElapsedMillisecondsプロパティを使用して経過時間をチェックします。

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

### プロパティ
|名前|説明|
|---|---|
|[Elapsed](./elapsed.md)|現在のインスタンスで計測された経過時間の合計を取得します。|
|[ElapsedMilliSeconds](./elapsedmilliseconds.md)|現在のインスタンスで計測された経過時間の合計をミリ秒単位で取得します。|
|[ElapsedTicks](./elapsedticks.md)|現在のインスタンスで計測された経過時間の合計を[Frequency](./frequency.md)単位で取得します。|
|[IsRunning](./isrunning.md)|現在のストップウォッチが時間を計測中かどうかを表す値を取得します。|
|[IsHighResolution](./ishighresolution.md)|現在のストップウォッチが高精度のパフォーマンスカウンターに基づいているかどうかを表す値を取得します。|
|[Frequency](./frequency.md)|現在のストップウォッチの精度を取得します。|

### メソッド
|名前|説明|
|---|---|
|[Start()](./start.md)|ストップウォッチの計測を開始または再開します。|
|[Stop()](./stop.md)|ストップウォッチの計測を停止します。|
|[Reset()](./reset.md)|ストップウォッチの計測を停止して、経過時間をゼロにリセットします。|
|[Restart()](./restart.md)|ストップウォッチの計測を停止して、経過時間をゼロにリセットしたあとで、もう一度計測を開始します。|
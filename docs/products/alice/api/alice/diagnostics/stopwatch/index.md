---
title: StopWatch
long_title : StopWatch クラス
summary: 経過時間を計測することができるストップウォッチを提供します。
date : 2023-08-09
mt_type: class
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
print("処理にかかった時間：{0}ミリ秒", stw.ElapsedMilliseconds);
```

### プロパティ

=!"products/alice/api/alice/diagnostics/stopwatch"|[property,include-subdir,smart-jump]!=

### メソッド

=!"products/alice/api/alice/diagnostics/stopwatch"|[method,include-subdir,smart-jump]!=

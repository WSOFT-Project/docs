---
title: Elapsed
long_title : StopWatch.Elapsed
summary: 現在のインスタンスで計測された経過時間の合計を取得します。
mt_type: property
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript2.1

現在のインスタンスで計測された経過時間の合計を取得します。

```cs title="AliceScript"
class Alice.Diagnostics.StopWatch;
readonly TimeSpan Elapsed;
```

|プロパティの値| |
|-|-|
|`TimeSpan`| 現在のインスタンスで計測された経過時間の合計を表す`TimeSpan`。このプロパティは読み取り専用です。|

### 例
次の例では、StopWatchクラスを使用して特定の処理にかかった時間を計測する方法を示します。

```cs title="AliceScript"
using Alice.Diagnostics;

var stw = new StopWatch();
stw.Start();

//なにか時間のかかる処理（ここではdelayを使用）
delay(3000);

stw.Stop();
print("処理にかかった時間：{0}", stw.Elapsed);
```
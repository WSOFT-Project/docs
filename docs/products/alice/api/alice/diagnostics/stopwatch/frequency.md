---
title: Frequency
long_title : StopWatch.Frequency
summary: 現在のストップウォッチの精度を取得します。
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript2.1

現在のストップウォッチの精度を取得します。

```cs title="AliceScript"
class Alice.Diagnostics.StopWatch;
readonly number Frequency;
```

|プロパティの値| |
|-|-|
|`number`| 現在のストップウォッチの精度を表す値。このプロパティは読み取り専用です。|

### 例
次の例では、StopWatchの精度を取得しています。

```cs title="AliceScript"
using Alice.Diagnostics;

var stw = new StopWatch();

print(stw.Frequency);
```
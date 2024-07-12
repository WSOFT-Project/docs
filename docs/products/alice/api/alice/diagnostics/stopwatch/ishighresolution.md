---
title: IsHighResolution
long_title : StopWatch.IsHighResolution
summary: 現在のストップウォッチが高精度のパフォーマンスカウンターに基づいているかどうかを表す値を取得します。
mt_type: property
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript2.1

現在のストップウォッチが高精度のパフォーマンスカウンターに基づいているかどうかを表す値を取得します。

```cs title="AliceScript"
class Alice.Diagnostics.StopWatch;
readonly bool IsHighResolution;
```

|プロパティの値| |
|-|-|
|`bool`| 現在のストップウォッチが高精度のパフォーマンスカウンターに基づいている場合は`true`、それ以外の場合は`false`。このプロパティは読み取り専用です。|

### 例
次の例では、StopWatchの精度を取得しています。

```cs title="AliceScript"
using Alice.Diagnostics;

var stw = new StopWatch();

print("ストップウォッチの精度:{0} ({1})", stw.IsHighResolution ? "高精度" : "標準精度",stw.Frequency);
```
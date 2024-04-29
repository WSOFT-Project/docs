---
title: DeepClone
long_title: variable.DeepClone
summary: その変数の厳格コピー（ディープコピー）を作成します。
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

その変数の厳格コピー（ディープコピー）を取得します

```cs title="AliceScript"
namespace Alice;
variable DeepClone();
```

|戻り値| |
|-|-|
|`variable`| その変数のインスタンスの厳格コピー|

### 説明
`Clone`メソッドによって取得できるインスタンスは、変数のディープコピーである点に注意してください。コピー先とコピー元のどちらかを変更してももう片方には反映されません。

### 例
以下は、変数`a`の厳格コピーを作成して使用します。

```cs title="AliceScript"
var a = 1;
var b = a.DeepClone();
b = 3;
print(a); // 出力例 : 1
```

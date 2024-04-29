---
title: Clone
long_title: variable.Clone
summary: その変数の簡易コピー（シャローコピー）を作成します。
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

#### Clone()

その変数の簡易コピー（シャローコピー）を取得します

```cs title="AliceScript"
namespace Alice;
variable Clone();
```

|戻り値| |
|-|-|
|`variable`| その変数のインスタンスの簡易コピー|

### 説明
`Clone`メソッドによって取得できるインスタンスは、変数のシャローコピーである点に注意してください。これは、コピーがコピー元のオブジェクトとプロパティにおいて同じ参照を共有するということです。このため、コピー先とコピー元のどちらを変更してももう片方にも反映されます。

### 例
以下は、変数`a`の簡易コピーを作成して使用します。

```cs title="AliceScript"
var a = 1;
var b = a.Clone();
b = 3;
print(a); // 出力例 : 3
```

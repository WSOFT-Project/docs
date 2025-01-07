---
title: Clone
long_title: variable.Clone
summary: その変数の簡易コピー（シャローコピー）を作成します。
mt_type: method
mt_title: Clone()
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.General.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.General.cs)

#### Clone()

その変数の簡易コピー（シャローコピー）を取得します

```cs title="AliceScript"
namespace Alice;
public variable Clone();
```

|戻り値| |
|-|-|
|`variable`| その変数のインスタンスの簡易コピー|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

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

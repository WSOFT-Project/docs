---
title: DeepClone
long_title: variable.DeepClone
summary: その変数の厳格コピー（ディープコピー）を作成します。
mt_type: method
mt_title: DeepClone()
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.General.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.General.cs)

#### DeepClone()

その変数の厳格コピー（ディープコピー）を取得します

```cs title="AliceScript"
namespace Alice;
public variable DeepClone();
```

|戻り値| |
|-|-|
|`variable`| その変数のインスタンスの厳格コピー|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

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

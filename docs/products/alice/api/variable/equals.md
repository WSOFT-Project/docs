---
title: Equals
long_title: variable.Equals
summary: その変数ともうひとつの変数が等しいかどうかを判断します
mt_type: method
mt_title: Equals(variable)
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.General.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.General.cs)

#### Equals(variable)

その変数ともうひとつの変数が等しいかどうかを判断します

```cs title="AliceScript"
namespace Alice;
public virtual bool Equals(variable other);
```

|引数| |
|-|-|
|`other`| その変数と等しいか比較する変数|

|戻り値| |
|-|-|
|`bool`| 二つの変数が等しければ`true`、それ以外の場合は`false`|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
以下は、ふたつの変数が正しいかどうかを検証する例です。

```cs title="AliceScript"
var a = 1;
var b = 1;
print(a == b); // 出力例 : true
```

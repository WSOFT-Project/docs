---
title: GetType
long_title: variable.GetType()
summary: その変数の種類を表すオブジェクトを取得します。
mt_type: method
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.General.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.General.cs)

その変数の種類を表す[Type](../alice/type/index.md)型のインスタンスを取得します

```cs title="AliceScript"
namespace Alice;
public readonly Type GetType();
```

|戻り値| |
|---|---|
|`number`|この変数がもう一方の値と比べてどの位置にあるかを表す値。|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 例
以下は、`a`が`number`型であるかどうかを検証します。

```cs title="AliceScript"
var a = 1;
print(a.GetType() == number); // 出力例 : true
```

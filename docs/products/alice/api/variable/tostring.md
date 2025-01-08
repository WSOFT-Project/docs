---
title: ToString
long_title: variable.ToString
summary: その変数の文字列表現を取得します
mt_type: method
mt_title: ToString()
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.General.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.General.cs)

#### ToString()

その変数の文字列表現を取得します

```cs title="AliceScript"
namespace Alice;
public virtual string ToString();
```

|戻り値| |
|-|-|
|`string`| その変数のインスタンスの文字列表現|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 例
以下は、`variable`型の文字列表現を取得します

```cs title="AliceScript"
print(variable.ToString()); // 出力例 : variable
```

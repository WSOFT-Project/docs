---
title: Distinct
long_title : array.Distinct
summary: 現在の配列内から重複する要素を除いた新しい配列を取得します
mt_type: method
mt_title: Distinct()
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### Distinct()

現在の配列内から重複する要素を除いた新しい配列を取得します

```cs title="AliceScript"
class Alice.Array;
public array Distinct();
```

|戻り値| |
|-|-|
|`array`|重複しないすべての要素を含む配列|

???note "対応: Alice2.2以降"
    |対応||
    |---|---|
    |AliceScript|2.2、2.3、3.0、4|
    |AliceSister|2.2、2.3、3.0、4|
    |Losetta|0.9、0.10、0.11|

### 例
以下は、`1`、`2`、`3`,`3`,`4`から重複しないすべての要素を取り出します。

```cs title="AliceScript"
var a = [1,2,3,3,4];
print(a.Distinct()); // 出力例 : [1,2,3,4]
```

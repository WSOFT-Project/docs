---
title: IndexOf
long_title : array.IndexOf
summary: 指定された値が現在の配列内で最初に見つかった位置のインデックスを返します
mt_type: method
mt_title: IndexOf(variable,number)
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### IndexOf(variable,number)

指定された値が現在の配列内で最初に見つかった位置のインデックスを返します。検索は、指定されたインデックスから開始され、見つからなかった場合は`-1`を返します。

```cs title="AliceScript"
class Alice.Array;
public number IndexOf(variable item,number startIndex = 0);
```

|引数| |
|-|-|
|`item`|検索する対象の値|
|`startIndex`|検索を開始するインデックス。既定値は`0`です。|

|戻り値| |
|-|-|
|`number`|`item`が配列内で見つかった場合は、最初に見つかった場所のインデックス、見つからなかった場合は`-1`。|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

!!!note "情報"
    インデックスとは、配列の最初の項目から順に`0,1,2...`と番号を割り当てたものです。たとえば、3番目の要素のインデックスは`2`です。

### 例
以下は、`1`、`2`、`3`がある配列から`3`のインデックスを取得します。

```cs title="AliceScript"
var a = [1,2,3];
print(a.IndexOf(3)); // 出力例 : 2
```

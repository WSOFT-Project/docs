---
title: LastIndexOf
long_title : string.LastIndexOf
summary: 指定された文字列が現在の文字列内で最後に見つかった位置のインデックスを返します
date : 2021-12-09
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)
s
#### LastIndexOf(string,number)

指定された文字列が現在の文字列内で最後に見つかった位置のインデックスを返します。検索は、指定されたインデックスから開始され、見つからなかった場合は`-1`を返します。

```cs title="AliceScript"
namespace Alice;
public number LastIndexOf(string item, number startIndex = 0);
```

|引数| |
|-|-|
|`item`|検索する対象の値|
|`startIndex`|検索を開始するインデックス。既定値は`0`です。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

!!!note "情報"
    インデックスとは、配列の最初の項目から順に`0,1,2...`と番号を割り当てたものです。たとえば、3番目の要素のインデックスは`2`です。

### 例
以下は、Hello,Worldという文字列から`,`のインデックスを取得します。

```cs title="AliceScript"
var a = "Hello,World";
print(a.IndexOf(",")); // 出力例 : 5
```

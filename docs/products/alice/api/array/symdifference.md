---
title: SymDifference
long_title : array.SymDifference
summary: 現在の配列と指定された配列の対称差集合を取得します
mt_type: method
mt_title: SymDifference(array)
draft: true
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### SymDifference(array)

> [!IMPORTANT] プレビュー
> この記事では、現在開発中のAlice vNEXTに実装される予定のAPIについて説明しています。
> このAPIは予告なく削除および変更される可能性があります。

現在の配列と指定された配列の対称差集合を取得します

```cs title="AliceScript"
class Alice.Array;
public array SymDifference(array other);
```

|引数| |
|-|-|
|`other`|対称差集合を求めるもう一方の配列|

|戻り値| |
|-|-|
|`array`|現在の配列と`other`の対称差集合|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

### 説明
このメソッドは、現在の配列と`other`の対称差集合を取得します。
**対称差集合**とは、ふたつの集合の合計のうち、どちらか片方にのみ存在する要素を全て集めた集合のことです。これは、差集合とは異なり、現在の配列には含まれていないが、比較先の配列には含まれている要素を含みます。

このメソッドの戻り値は、元の配列の並び順を保つとは限りません。
このメソッドの計算量は、$O(nm)$です。この時、$n$と$m$はそれぞれ、現在の配列と`other`の要素数です。

### 例
以下は、`1`、`2`、`3`の含まれる配列と`2`、`3`、`4`の含まれる配列の対称差集合を求めます。

```cs title="AliceScript"
var a = [1, 2, 3];
var b = [2, 3, 4];
print(a.SymDifference(b)); // 出力例 : [1, 4]
```

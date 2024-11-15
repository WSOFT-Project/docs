---
title: Zip
long_title : array.Zip
summary: 現在の配列と他の配列を組み合わせた新しい配列を作成します。
mt_type: method
mt_title: Zip(params array)
mt_summary: 現在の配列と他の配列の同じ場所の要素からなる配列の配列を作成します。
mt_title: Zip(delegate,params array)
mt_summary: 現在の配列と他の配列の各要素に、指定した関数を適用した結果の配列を作成します。
draft: true
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### Zip(params array)

> [!IMPORTANT] プレビュー
> この記事では、現在開発中のAlice vNEXTに実装される予定のAPIについて説明しています。
> このAPIは予告なく削除および変更される可能性があります。

現在の配列と他の配列の同じ場所の要素からなる配列の配列を作成します。

```cs title="AliceScript"
class Alice.Array;
public array Zip(params array others);
```

|引数| |
|-|-|
|`others`|結合する他の配列の配列|

|戻り値| |
|-|-|
|`array`|現在の配列と`others`の各要素を含む配列|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||


#### Zip(delegate,params array)

> [!IMPORTANT] プレビュー
> この記事では、現在開発中のAlice vNEXTに実装される予定のAPIについて説明しています。
> このAPIは予告なく削除および変更される可能性があります。

現在の配列と他の配列の各要素に、指定した関数を適用した結果の配列を作成します。

```cs title="AliceScript"
class Alice.Array;
public array Zip(delegate predicate, params array others);
```

|引数| |
|-|-|
|`predicate`|配列の要素に適用する関数|
|`others`|結合する他の配列の配列|

|戻り値| |
|-|-|
|`array`|現在の配列と`others`の各要素を含む配列|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

### 説明
このメソッドは、現在の配列と他の配列を組み合わせた新しい配列を作成します。
このメソッドが返す配列は、現在の配列か`others`に含まれる全ての配列のうち最も短いものと同じ長さになります。

`predicate`は、`others`に含まれる配列と同じ数+1個の引数を受け取れる必要があります。

### 例
以下は、`1`、`2`、`3`の含まれる配列と`one`,`two`,`three`の含まれる配列を結合します。

```cs title="AliceScript"
var num = [1, 2, 3];
var str = ["one", "two", "three"];

var result = num.Zip(str);
print(result);
//出力: [[1, "one"], [2, "two"], [3, "three"]]
```

以下は、ふたつの配列の各要素の合計を表す新しい配列を作成します。

```cs title="AliceScript"
var ary1 = [0, 1, 2, 3, 4, 5];
var ary2 = [5, 4, 3, 2, 1, 0];

var result = ary1.Zip((x,y => x + y), ary2);
//出力: [5, 5, 5, 5, 5, 5]
```

---
title: Sort
long_title : array.Sort
summary: 現在の配列の要素の順序を並び替えます
mt_type: method
mt_title: Sort()
mt_summary: 現在の配列の要素の順序を並び替えます
mt_title: Sort(delegate)
mt_summary: 現在の配列の要素の順序を、指定した並べ替え規則を使用して並び替えます
mt_title: Sort(number,number)
mt_summary: 現在の配列内の指定した範囲の要素の順序を並び替えます
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### Sort()

現在の配列を並び替えます

```cs title="AliceScript"
class Alice.Array;
public void Sort();
```

???note "対応: Alice2.0以降"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0|
    |AliceSister|2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.9、0.10|

#### Sort(delegate)

> [!IMPORTANT] プレビュー
> この記事では、現在開発中のAlice vNEXTに実装される予定のAPIについて説明しています。
> このAPIは予告なく削除および変更される可能性があります。

現在の配列の要素の順序を、指定した並べ替え規則を使用して並び替えます

```cs title="AliceScript"
class Alice.Array;
public void Sort(delegate comparator);
```

|引数| |
|-|-|
|`comparator`|並び替えに使用するデリゲート|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

#### Sort(number,number)

> [!IMPORTANT] プレビュー
> この記事では、現在開発中のAlice vNEXTに実装される予定のAPIについて説明しています。
> このAPIは予告なく削除および変更される可能性があります。

現在の配列内の指定した範囲の要素の順序を並び替えます

```cs title="AliceScript"
class Alice.Array;
public void Sort(number index,number count);
```

|引数| |
|-|-|
|`index`|並び替えを開始するインデックス|
|`count`|並び替えを実行する要素の数|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

### 説明
このメソッドは、イントロソートアルゴリズムを使用して、配列を並べ替えます。
このアルゴリズムでは、配列のパーティションサイズが16より小さい場合は挿入ソートを、$2\log(n)$($n$は配列の長さ)を超える場合はヒープソートを実行し、そうでない場合はクイックソートを行います。このため、2つの要素の並び順が同じ場合でも、このメソッドを実行した後にそれらの順番が同じである保証はありません。

このため、このメソッドの計算量は$O(\log{n})$です。ここで、$n$は配列の要素数です。

このメソッドは、[OrderBy](./orderby.md)メソッドとは異なり、現在の配列内の要素を並べ替えます。

デリゲートを使用して、並び替え方法をカスタマイズする場合は、`Sort(delegate)`のオーバーロードを使用してください。このとき、`comparator`は比較対象の要素を引数として2つ受け取ります。このラムダ式は、受け取った比較対象の要素に応じて、並べ替える必要がある場合は`-1`を返してください。

### 例
以下の例では、`3`、`2`、`1`と並ぶ配列を昇順にソートします。

```cs title="AliceScript"
array ary = [3,2,1];

// 配列の全要素を並べ替え
ary.Sort();

print(ary); // 出力例 : [1,2,3]
```

以下の例では、配列の先頭から3つ目までの範囲をソートしています。

```cs title="AliceScript"
array ary = [2, 3, 1, 3, 2, 1];

// 先頭から3つを並べ替え
ary.Sort(0, 3);

print(ary); // 出力例: [1, 2, 3, 3, 2, 1]
```

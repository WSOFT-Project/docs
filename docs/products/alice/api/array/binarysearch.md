---
title: BinarySearch
long_title : array.BinarySearch
summary: ソート済みの配列に対して、二分探索を使用して指定された要素を検索します。
mt_type: method
mt_title: BinarySearch(variable)
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### BinarySearch(variable)

ソート済みの配列に対して、二分探索を使用して指定された要素を検索します。

```cs title="AliceScript"
class Alice.Array;
public void BinarySearch(variable item);
```

|引数| |
|-|-|
|`item`|検索する対象の値|

|戻り値| |
|-|-|
|`number`|`item`が配列内で見つかった場合は、最初に見つかった場所のインデックス、見つからなかった場合、その次に大きい要素のインデックスの2の補数、ただし、それも見つからなかった場合は[length](./length.md)の2の補数。|

???note "対応: Alice3.0 以降"
    |対応||
    |---|---|
    |AliceScript|3.0、4|
    |AliceSister|3.0、4|
    |Losetta|0.10、0.11|

### 説明

この関数は、二分探索アルゴリズムを使用して、指定された要素を検索し、ある場合はそのインデックスを返します。

この関数を使用する前に、配列が適切にソートされている必要があります。
事前にソートされていない場合、正しく検索を行えません。

配列内に同じ値を持つ複数の要素が含まれている場合、この関数はあるひとつの出現箇所のインデックスを返します。ただし、これは必ずしも最初に見つかったものとは限りません。

配列内に同じ値を持つ要素が含まれていない場合、この関数は負の値を返します。
この負の値にビット反転演算(`~`)を行うことで、検索する要素にもっとも近いより大きな要素のインデックスを取得できます。

この関数の計算量は、$O(log n)$です。ここで、$n$は配列の要素数です。

### 例
以下は、数値の並びがある配列から`14`のインデックスを取得します。

```cs title="AliceScript"
array ary = [4, 14, 48, 24, 44, 144];
// 初めにソートする
ary.Sort();
print(ary.BinarySearch(14)); // 出力例 : 1
```

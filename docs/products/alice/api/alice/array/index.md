---
title: array
summary: 配列型は、インデックスを使用してアクセスできる変数のリストを表します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

配列型は、インデックスを使用してアクセスできる変数のリストを表します。配列型は、結合、比較、等値演算子をサポートしています。 配列型の規定値は空の配列`[]`です。この型はnullをとり得ます。この型の型指定修飾子は`array`です。

配列型は必ずしも要素を含む必要も、同一の型である必要もありません。配列型への暗黙的な変換はサポートされていません。 その問題から、バイナリ配列を表す[bytes型](../bytes/index.md)は別に定義されています。明示的な変換を行うとき、その値を唯一の要素とする配列型に変換されます。

```cs title="AliceScript"
namespace Alice;
global class array;
```

### 説明
配列は、0個以上の変数を格納することができるオブジェクトとみなすことができます。CやC++のようなアドレス指定可能な連続メモリ領域ではありません。
また、配列には別の配列を含むこともできます。このような配列は多次元配列やジャグ配列と呼ばれます。

### メソッドとプロパティ
|名前|説明|
|---|---|
|[Length](../array/length.md)|その変数の持つデータ長を表します|
|[First](../array/first.md)|現在の配列の最初の要素を表します|
|[Last](../array/last.md)|現在の配列の最後の要素を表します|
|[Add(params variable item)](../array/add.md)|現在の配列の末尾に値を追加します|
|[AddRange(params array items)](../array/addrange.md)|現在の配列の末尾にその配列に含まれるすべての要素を追加します|
|[Contains(variable item)](../array/contains.md)|現在の配列内に指定された値が存在するかを示す値を取得します|
|[Flatten()](../array/flatten.md)|現在の配列内にある配列型の要素を、現在の配列が存在する場所に置き換え、配列を平坦化します|
|[Foreach(delegate task)](../array/foreach.md)|現在の配列からひとつずつ要素を取り出し、与えられたデリゲートを実行します|
|[IndexOf(variable item,number startIndex=0)](./indexof.md)|指定された値が現在の配列内で最初に見つかった位置のインデックスを返します|
|[Insert(number index,variable item)](./insert.md)|現在の配列内の指定したインデックスにその値を挿入します|
|[InsertRange(number index,array items)](./insertrange.md)|現在の配列内の指定したインデックス配列に含まれるすべての要素を追加します|
|[Merge(params variable item)](./merge.md)|現在の配列の末尾に値を追加した新しい配列を返します|
|[Merge(params array ary)](./merge.md)|現在の配列の末尾に配列を結合した新しい配列を返します|
|[Remove(params variable item)](./remove.md)|現在の配列から指定された値を削除します|
|[RemoveAt(number index)](./removeat.md)|現在の配列の指定したインデックスにある値を削除します|
|[RemoveRange(array items)](./removerange.md)|現在の配列から指定された配列に含まれるすべての値を削除します|
|[Reverse()](./reverse.md)|現在の配列の要素の順序を反転させます|
|[Reverse(number index,number count)](./reverse.md)|現在の配列内の指定した範囲の要素の順序を反転させます|
|[Size()](../array/size.md)|その変数の持つデータ長を取得します|
|[Sort()](./sort.md)|現在の配列を規定の方法で並び替えます|

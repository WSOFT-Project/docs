---
title: array
summary: 配列型は、インデックスを使用してアクセスできる変数のリストを表します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

配列型は、インデックスを使用してアクセスできる変数のリストを表します。配列型は、結合、比較、等値演算子をサポートしています。 配列型の規定値は空の配列`[]`です。この型はnullをとり得ます。この型の型指定修飾子は`array`です。

```cs title="AliceScript"
namespace Alice;
public class array;
```

### 説明
配列は、0個以上の変数を格納することができるオブジェクトとみなすことができます。CやC++のようなアドレス指定可能な連続メモリ領域ではありません。
また、配列には別の配列を含むこともできます。このような配列は多次元配列やジャグ配列と呼ばれます。

```cs title="AliceScript"
// 配列を定義する
// [1,1,2,3,5]
var ary = [1,1,2,3,5];

// 配列内の要素の個数=配列の長さを取得する
print($"配列の長さは{ary.Length}個");
// 出力: 配列の長さは5個

// 配列に要素を追加する
// [1,1,2,3,5,8]
ary.Add(8);

// 配列の長さがひとつ増えたことを確認
print($"配列の長さは{ary.Length}個");
// 出力: 配列の長さは6個

// 配列内に1が含まれているか確認する
if(ary.Contains(1))
{
    print("配列には、1が含まれています");
}
// 出力: 配列には、1が含まれています

// 配列内の2を削除する
// [1,1,3,5,8]
ary.Remove(2);

// 配列内のすべての要素を削除する
// []
ary.Clear();

// 配列に要素をまとめて追加
// [3,1,2,4]
ary.Add(3,1,2,4);

// 配列内の要素についてひとつずつ取得する
foreach(var item in ary)
{
    write($"{item}, ");
}
// 出力: 3, 1, 2, 4

// これも同じ意味
ary.Foreach(item => write($"{item}, "));

// 配列を昇順に並べ替え
// [1,2,3,4]
ary.Sort();

// 配列の順序を反転
// [4,3,2,1]
ary.Reverse();

// 配列の先頭の要素を取得
print(ary.First); 
// 出力: 4

// 配列の最後の要素を取得
print(ary.Last); 
// 出力: 1
```

現在配列に存在する要素の個数を取得するには、[Length](./length.md)プロパティを使用します。

配列に要素を追加するには、[Add](./add.md)メソッドを使用します。また、別の配列の要素を現在の配列に追加するために[AddRange](./addrange.md)メソッドを使用することもできます。
配列に要素を追加した後、配列の長さが増えていることにご注目ください。

配列に特定の要素が含まれているかを調べるには、[Contains](./contains.md)メソッドを使用します。

配列内から特定の要素を削除するには、[Remove](./remove.md)メソッドを使用します。また、[Clear](./clear.md)メソッドを使用することで、配列内のすべての要素を削除できます。

配列内の要素をひとつずつ取得して処理するには、[Foreach](../alice/foreach.md)文を使用するか、[Foreach](./foreach.md)メソッドを使用します。

配列を昇順に並べ替えるには、[Sort](./sort.md)メソッドを使用します。また、配列の並び順を反転するには、[Reverse](./reverse.md)メソッドを使用します。

[First](./first.md)プロパティを使用して、配列の並び順で先頭の要素を取得します。
同様に、[Last](./last.md)プロパティを使用することで、並び順の最後の要素を取得します。

```cs title="AliceScript"
using Alice.Math;

var ary2 = [1,2,3,4,5,6];

// 配列から素数だけを取得
var primes = ary2.Where(x => math_isPrime(x));

// 配列の要素の2の倍数の配列を作成
var evens = ary2.Select(x => x * 2);

if(ary2.All(x => x > 0))
{
    print("配列内の要素はすべて正の数でした");
}
```

[Where](./where.md)メソッドを使用することで、配列から特定の条件に一致する要素のみを含めた新しい配列を取得できます。また、[Select](./select.md)メソッドを使用することで、配列のそれぞれの要素に対して何らかの操作をし、その結果を含めた新しい配列を作成できます。

配列内の要素がすべて条件を満たすかどうかを判定するには、[All](./all.md)メソッドを使用します。

#### 型の一意性

配列型は、その初期化時に配列に含むことのできる変数の型を指定できます。型を指定するには、次のように配列を宣言します。

```cs title="AliceScript"
var num_ary = array(number).Activate();
```

デフォルトでは、配列型は必ずしも要素を含む必要も、同一の型である必要もありません。配列型への暗黙的な変換はサポートされていません。 その問題から、バイト配列を表す[bytes型](../bytes/index.md)は別に定義されています。明示的な変換を行うとき、その値を唯一の要素とする配列型に変換されます。

### プロパティ
|名前|説明|
|---|---|
|[Length](../array/length.md)|その変数の持つデータ長を表します|
|[First](../array/first.md)|現在の配列の最初の要素を表します|
|[Last](../array/last.md)|現在の配列の最後の要素を表します|

### メソッド
|名前|説明|
|---|---|
|[Add(params variable item)](./add.md)|現在の配列の末尾に値を追加します|
|[All(delegate condition)](./all.md)|現在の配列に含まれるすべての要素が条件を満たしているかどうか判定します|
|[Any(delegate condition)](./any.md)|現在の配列に含まれるいずれかの要素が条件を満たしているかどうか判定します|
|[AddRange(params array items)](./addrange.md)|現在の配列の末尾にその配列に含まれるすべての要素を追加します|
|[Clear()](./clear.md)|現在の配列からすべての要素を削除します|
|[Contains(variable item)](./contains.md)|現在の配列内に指定された値が存在するかを示す値を取得します|
|[Distinct()](./except.md)|現在の配列内に指定された値が存在するかを示す値を取得します|
|[Except(array other)](./distinct.md)|現在の配列と指定された配列の差集合を取得します|
|[Flatten()](../array/flatten.md)|現在の配列内にある配列型の要素を、現在の配列が存在する場所に置き換え、配列を平坦化します|
|[Foreach(delegate task)](../array/foreach.md)|現在の配列からひとつずつ要素を取り出し、与えられたデリゲートを実行します|
|[IndexOf(variable item,number startIndex=0)](./indexof.md)|指定された値が現在の配列内で最初に見つかった位置のインデックスを返します|
|[Insert(number index,variable item)](./insert.md)|現在の配列内の指定したインデックスにその値を挿入します|
|[InsertRange(number index,array items)](./insertrange.md)|現在の配列内の指定したインデックス配列に含まれるすべての要素を追加します|
|[Intersect(array other)](./intersect.md)|現在の配列と指定された配列の積集合を取得します|
|[Merge(params variable item)](./merge.md)|現在の配列の末尾に値を追加した新しい配列を返します|
|[Merge(params array ary)](./merge.md)|現在の配列の末尾に配列を結合した新しい配列を返します|
|[OfType(type target)](./oftype.md)|現在の配列から指定された型の要素のみを取り出します|
|[OrderBy()](./orderby.md)|現在の配列の要素を昇順で並べ替えます|
|[OrderByDescending()](./orderbydescending.md)|現在の配列の要素を降順で並べ替えます|
|[Remove(params variable item)](./remove.md)|現在の配列から指定された値を削除します|
|[RemoveAt(number index)](./removeat.md)|現在の配列の指定したインデックスにある値を削除します|
|[RemoveRange(array items)](./removerange.md)|現在の配列から指定された配列に含まれるすべての値を削除します|
|[Reverse()](./reverse.md)|現在の配列の要素の順序を反転させます|
|[Reverse(number index,number count)](./reverse.md)|現在の配列内の指定した範囲の要素の順序を反転させます|
|[Select(delegate selector)](./select.md)|現在の配列の各要素を新しい配列に射影します|
|[SequenceEqual(array other)](./sequenceequal.md)|現在の配列ともう一方の配列の要素が等しいかどうかを判定します|
|[Size()](../array/size.md)|その変数の持つデータ長を取得します|
|[Skip(number count)](./skip.md)|現在の配列内の先頭から指定された数の要素を取り除いた配列を取得します|
|[SkipLast(number count)](./skiplast.md)|現在の配列内の末尾から指定された数の要素を取り除いた配列を取得します|
|[SkipWhile(delegate condition)](./skipwhile.md)|現在の配列内の先頭から指定された条件を満たす間要素を除いた配列を取得します|
|[Sort()](./sort.md)|現在の配列を規定の方法で並び替えます|
|[Take(number count)](./take.md)|現在の配列内の先頭から指定された個数の要素を取得します|
|[TakeWhile(delegate condition)](./takewhile.md)|現在の配列内の先頭から指定された条件を満たす間の要素を取得します|
|[Union(array other)](./union.md)|現在の配列と指定された配列の和集合を取得します|
|[Where(delegate condition)](./where.md)|現在の配列から指定された条件に一致する要素のみを取り出します|

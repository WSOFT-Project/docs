---
title: array
long_title : array型
summary: 配列型は、インデックスを使用してアクセスできる変数のリストを表します
mt_type: type
---
### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.dll

配列型は、インデックスを使用してアクセスできる変数のリストを表します。配列型は、[関係演算子](../../general/operators/relational-operators.md)と[配列演算子](../../general//operators/array-expression.md)をサポートしています。 配列型の既定値は空の配列`[]`です。この型はnullをとり得ます。この型の型指定修飾子は`array`です。

```cs title="AliceScript"
namespace Alice;
public class array;
```

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 説明
配列は、複数の値をひとまとめに扱うためのアプローチです。
配列は、0個以上の変数を格納することができるオブジェクトとみなすことができます。AliceScriptにおける配列は、CやC++のようなアドレス指定可能な連続メモリ領域ではなく、ヒープに配置される一種のオブジェクトです。
また、配列には別の配列を含むこともできます。このような配列は多次元配列やジャグ配列と呼ばれます。
配列は[配列式](../../general/operators/array-expression.md)を使って初期化します。次の例をご覧ください。

```cs title="AliceScript"
var ary = [1, 2, 3, 4, 5];
```

次の例では、基本的な配列の使用方法を説明しています。

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

### 統計処理
配列に処理したい値を格納することで、簡単に統計情報を取得できます。
以下のコードをご覧ください。

```cs title="AliceScript"
// 処理したいデータ
array data = [8, 9, 6, 11, 3, 10, 8, 9];

number max = data.Max();
number min = data.Min();

print($"データの最大値は {max} です");
print($"データの最小値は {min} です");

number mean = data.Mean();
number median = data.Median();
number mode = data.Mode();

print($"データの平均値は {mean} です");
print($"データの中央値は {median} です");
print($"データの最頻値は {mode} です");

number variance = data.Variance();
number stdDev = data.StdDev();

print($"データの分散は {variance} です");
print($"データの標準偏差は {stdDev} です");
```

独自の拡張を作ることで、標準誤差も計算できます。

```cs title="AliceScript"
using Alice.Math;

namespace MyExtension;

public number StdError(this array data)
{
    // 数値型のみ計算に入れる
    data = data.OfType(number); 

    // 標準誤差の計算
    return data.StdDev() / math_sqrt(data.Length);
}

number error = data.StdError();

print($"データの標準誤差は {error} です");
```

#### 型の一意性

配列型は、その初期化時に配列に含むことのできる変数の型を指定できます。型を指定するには、次のように配列を宣言します。

```cs title="AliceScript"
var num_ary = array(number).Activate();
```

デフォルトでは、配列型は必ずしも要素を含む必要も、同一の型である必要もありません。配列型への暗黙的な変換はサポートされていません。 その問題から、バイト配列を表す[bytes型](../bytes/index.md)は別に定義されています。明示的な変換を行うとき、その値を唯一の要素とする配列型に変換されます。

### プロパティ

=!"products/alice/api/array"|[property,include-subdir]!=

### メソッド

=!"products/alice/api/array"|[method,include-subdir]!=
---
title: Select
long_title : array.Select
summary: 現在の配列の各要素を新しい配列に射影します
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### Select(delegate)

現在の配列の各要素を新しい配列に射影します

```cs title="AliceScript"
class Alice.Array;
public array Select(delegate selector);
```

|引数| |
|-|-|
|`selector`|射影を行うために使用する射影関数|

|戻り値| |
|-|-|
|`array`|`selector`で実行された現在の配列の射影を格納する新しい配列|

???note "対応: Alice2.2以降"
    |対応||
    |---|---|
    |AliceScript|2.2、2.3、3.0|
    |AliceSister|2.2、2.3、3.0|
    |Losetta|0.9、0.10|

### 説明
射影とは、配列の各要素に関数を通し得た値を用いて配列を作成することです。
たとえば、各商品が「販売価格」と「原価」のふたつの値をもつデータがあるとします。
これを、AliceScriptで以下のように表現します。

```cs title="AliceScript"
// ここでは配列の最初の要素に販売価格を、2番目の要素に原価を設定する

// りんご 販売価格=120円, 原価=60円
var apple = [120,60];
// バナナ 販売価格=260円, 原価=120円
var banana = [260,120];
// ぶどう 販売価格=480円, 原価=360円
var grape = [480,360];

// 販売中のすべての商品
// りんご、バナナ、ぶどうがある
var items = [apple, banana, grape];

// リンゴを表示
print(items[0]); //こんな感じにそれぞれのデータを表示できる
```

次に、販売中のすべての商品が含まれる`items`から、原価率を表す配列を計算します。
原価率は以下の式で求めることにします。

$$
原価率 = \tfrac{原価}{販売価格}
$$

まず、それぞれの商品から原価率を計算する関数を定義します。

```cs title="AliceScript"
// 商品の原価率を求める関数
number CalcCostRate(array item)
{
    // 商品から販売価格と原価を取得する
    number price = item[0]; //販売価格
    number cost  = item[1]; //原価

    // 原価率を求めて返す
    return cost / price;
}
```

あとは、定義した関数を使って販売中の商品の配列の射影をとるだけです。
このとき、`Select`メソッドの引数に定義した関数の名前を指定していることに注目してください。このように関数呼び出し演算子`()`を使わずに関数名だけを引数に使用すると、自動的に[デリゲート](../delegate/index.md)に変換されます。

```cs title="AliceScript"
// CalcCostRate関数を使って射影をとる
var rates = items.Select(CalcCostRate);

// 各商品の原価率を表示する
print($"りんご : {rates[0]}");
print($"バナナ : {rates[1]}");
print($"ぶどう : {rates[2]}");
```

上記の例では関数を定義して射影をとっていましたが、ラムダ式を使用すると関数を定義せずに簡潔に射影関数を定義できます。次の例をご覧ください。

```cs title="AliceScript"
// 販売中のすべての商品
// りんご、バナナ、ぶどうがある
var items=[[120,60],[260,120],[480,360]];

// ラムダ式を使って射影をとる
var rates = items.Select(item => item[1] / item[0]);
```

### 例
以下は、`1`、`2`、`3`,`4`の2で割った余りを取得します。

```cs title="AliceScript"
var a = [1,2,3,4];
print(a.Select(item => item % 2)); // 出力例 : [1, 0, 1, 0]
```

---
title: 演算子と式
summary: 式は、AliceScriptにおけるもっとも重要かつ基本的な要素です。
date : 2021-12-25
---

AliceScriptにおいて、ほとんどのものは ==**式**== で記述されます。
AliceScriptでは式を、値を返すものすべてと定義します。
ここでは式を値があるものすべてと定義します。

AliceScriptにおける式のもっとも単純な形を次に示します。

```cs title="AliceScript"
1 + 1;
```

数学と同じですね。
この例では、`1+1`の計算を行っています。ここで、`1`は、明らかに`1`という値です。言い換えると`1`は`1`という値を表す式なのです。 このようにコード中に直接書かれた値のことを、==リテラル== と呼びます。

式の多くの使い道は、式の結果をどこかへ代入することです。
次の例をご覧ください。

```cs title="AliceScript"
var a = 1 + 1;
```

この例では、先ほどの計算結果を変数`a`に定義して代入しています。
この代入の後、変数`a`は、`2`になります。
このように何かの値に代入すると、==[代入文](./statement.md)== となります。
AliceScriptで変数を定義したり代入する方法について詳しく知るには、[変数](./variable.md)を参照してください。

ここでの`+`は加算演算子という演算子です。
AliceScriptにはさまざまな演算子が存在し、それらは以下のグループに大別できます。

- [算術演算子](./arithmetic-operators.md)
- [関係演算子](./relational-operators.md)
- [論理演算子](./logical-operators.md)
- [ビット演算子](./bitwise-operators.md)
- [型演算子](./type-operators.md)

## 複合代入
多くの算術演算子は、複合代入をサポートします。算術演算子を`op`と置いた場合、次のふたつの式は等価です。

```cs title="AliceScript"
x op= y;
```

```cs title="AliceScript"
x = x op y;
```

## 文字列連結
一方または両方の値が文字列型の場合、+演算子によってその値の文字列表現が連結されます。次に例を示します。

```cs title="JavaScript"
print("Hello,"+"World.");
//出力:Hello,World.
```

## 配列の連結または追加
左辺の変数が配列型の場合、右辺が配列型ならその配列が連結され、それ以外の型なら左辺の配列に右辺の項目が追加されます。次に例を示します。

```cs title="AliceScript"
var arr = ["a","b"];
print(arr);//出力:a,b
arr += "c";
print(arr);//出力:a,b,c
```

## デリゲートの組み合わせ
左辺と右辺の両方がデリゲート型の場合、左辺のデリゲートと右辺のデリゲートが結合された新しいデリゲートが返されます。次に例を示します。

```cs title="AliceScript"
var del1 = ()=>{
  print("Hello");
};
var del2 = ()=>{
  print("World");
};

var del = del1 + del2;
del.Invoke();
//出力:Hello
//    World
```

## ラムダ演算子
ラムダ演算子(`=>``)は、ラムダ式中で、左側の引数指定部と右側の式本体をわけるために使用します。[ラムダ式](../delegate)を参照してください。


## スプレッド演算子
<span class="badge bg-success">対応バージョン>=Alice3.0</span>

スプレッド演算子(`...`)は、コレクション式中で別の配列の中身を展開するときに使用します。
次の例を参照してください。

```cs title="AliceScript"
var baseArray = [1,2,3];

var combined = [0, ...baseArray , 4];

print(combined);//出力: 0,1,2,3,4
```

## Null合体演算子
Null合体演算子は、左の値が`null`でない場合その値を返し、それ以外の場合は右の値が評価され返されます。次に例を示します。

```cs title="AliceScript"
var v = "ABC";
print(v??"Hello,World");//出力:ABC
v = null;
print(v??"Hello,World");//出力:Hello,World
```

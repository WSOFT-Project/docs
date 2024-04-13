---
title : 配列式
summary : 配列式を使用すると、ソースコード上で直接配列を定義できます。
date : 2024-04-10
---

==配列式==(`[]`)を使用すると、ソースコード上で直接配列を定義できます。次の例をご覧ください。

```cs title="AliceScript"
// 配列を宣言
var ary = [0, 1, 2, 3, 4];
// 要素が空の配列を宣言
var empty = [];
```

## スプレッド演算子
<span class="badge bg-success">対応バージョン>=Alice3.0</span>

スプレッド演算子(`...`)は、配列式中で別の配列の中身を展開するときに使用します。
次の例を参照してください。

```cs title="AliceScript"
var baseArray = [1,2,3];

var combined = [0, ...baseArray , 4];

print(combined);//出力: 0,1,2,3,4
```

## 配列の連結または追加
左辺の変数が配列型の場合、右辺が配列型ならその配列が連結され、それ以外の型なら左辺の配列に右辺の項目が追加されます。次に例を示します。

```cs title="AliceScript"
var arr = ["a","b"];
print(arr);//出力:a,b
arr += "c";
print(arr);//出力:a,b,c
```

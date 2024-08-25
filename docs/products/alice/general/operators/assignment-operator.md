---
title: 代入演算子
summary: 代入演算子は、変数に値を代入するときに使用します。
date : 2021-12-25
---

代入演算子は、右辺の値を、左辺で指定された変数に割り当てます。代入式の結果は、左辺に代入された値です。右辺の型は、左辺の型と同じである必要があります。

次の例では、変数`a`に値`123`を代入しています。

```cs title="AliceScript"
a = 123;
```

代入演算子は、右結合です。
このため、次のような式は、`a`と`b`にどちらも`c`の内容が代入されます。

```cs title="AliceScript"
a = b = c;

// これは以下と同じ意味
a = (b = c);
```

代入を行うとき、右辺の値がオブジェクトの場合、左辺に参照のコピーを代入し、そうでない場合は左辺には値のコピーを代入します。
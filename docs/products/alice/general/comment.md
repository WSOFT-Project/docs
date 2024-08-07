---
title : コメント
summary : この記事では、AliceScriptのコード中にコメントを書く方法について説明します。
date : 2023-10-04
---

AliceScriptでは、比較的自然言語[^1]に近い形式でプログラムを記述できますが、ロジックが複雑になればなるほど自然言語による説明が必要になります。ソースコードをより分かりやすくするには、==コメント== を使って、「人間の言葉」で処理の概要や変数の意味などを書いておくとよいでしょう。

AliceScriptでは、コメントはまったく処理とは関係なく、インタプリタからは無視されます。

AliceScriptでは、単一行のコメントと複数行のコメントの2通りのコメントが使用できます。
次に例を示します。

```cs title="AliceScript"
// これは単一行のコメントです
// その行の最後までコメントになります

/*
  これは複数行のコメントです
  明示的に終了するまでコメントになります
*/
```

複数行のコメントを使うと、コード中にコメントを書くことができます。次の例を参照してください。

```cs title="AliceScript"
using Alice.Math;

math_round(1.23 /* 丸める数値 */,1 /* 小数点以下何文字まで残すか */);
```

単一行のコメントは、行の最後まで続きます。よって、コメントの後同じ行にコードを書くことはできません。次の例を参照してください。

```cs title="AliceScript"
number oranges = 3; // みかんの個数
```

[^1]: 普段私たちが会話などに使用する英語や日本語のような言語のこと
---
title: gc_collect
summary: 強制的にガページコレクションを行います。
date : 2021-09-12
---
### 定義
名前空間:Alice.Interpreter / アセンブリ : Losetta.dll / サポート: AliceScript1

属性: 関数

現在の処理系に対し強制的にすべてのガページコレクションを実行するよう要請します。

```cs title="AliceScript"
namespace Alice.Net;
void gc_collect();
```

### 例
次の例では、ガページコレクションを行います。

```cs title="AliceScript"
using Alice.Interpreter;

gc_collect();
```
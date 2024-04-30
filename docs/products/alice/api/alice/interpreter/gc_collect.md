---
title: gc_collect
summary: 強制的にガページコレクションを行います。
date : 2021-09-12
---

### 定義
名前空間: Alice.Interpreter<br/>
アセンブリ: Losetta.dll<br/>
ソースコード: [Alice.Interpreter.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta/NameSpaces/Alice.Interpreter.cs)


#### gc_collect()

現在の処理系に対し強制的にすべてのガページコレクションを実行するよう要請します。

```cs title="AliceScript"
namespace Alice.Interpreter;
public void gc_collect();
```

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
次の例では、ガページコレクションを行います。

```cs title="AliceScript"
using Alice.Interpreter;

gc_collect();
```
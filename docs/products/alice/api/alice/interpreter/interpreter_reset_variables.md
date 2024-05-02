---
title: interpreter_reset_variables
summary: 現在インタプリタに定義されているすべてのグローバル変数の定義を解除します。
date : 2021-09-12
---

### 定義
名前空間: Alice.Interpreter<br/>
アセンブリ: Losetta.dll<br/>
ソースコード: [Alice.Interpreter.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta/NameSpaces/Alice.Interpreter.cs)


#### interpreter_reset_variables()

現在インタプリタに定義されているすべてのグローバル変数の定義を解除します。

```cs title="AliceScript"
namespace Alice.Interpreter;
public void interpreter_reset_variables();
```

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
次の例では、グローバル変数を定義した後、その定義を解除します。

```cs title="AliceScript"
using Alice.Interpreter;

global var pi = 3.1459
interpreter_reset_variables();
print(pi);//例外発生
```
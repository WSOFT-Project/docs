---
title: interpreter_reset_variables
summary: 現在インタプリタに定義されているすべてのグローバル変数の定義を解除します。
date : 2021-09-12
---
### 定義
名前空間:Alice.Interpreter / アセンブリ : Losetta.dll / サポート: AliceScript1

属性: 関数

#### interpreter_reset_variables()

現在インタプリタに定義されているすべてのグローバル変数の定義を解除します。

```cs title="AliceScript"
namespace Alice.Interpreter;
public void interpreter_reset_variables();
```

### 例
次の例では、グローバル変数を定義した後、その定義を解除します。

```cs title="AliceScript"
using Alice.Interpreter;

global var pi = 3.1459
interpreter_reset_variables();
print(pi);//例外発生
```
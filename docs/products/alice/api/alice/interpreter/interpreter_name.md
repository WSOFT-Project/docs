---
title: interpreter_name
summary: 実行中のインタプリタの名前を取得します。
date : 2021-11-19
---
### 定義
名前空間:Alice.Interpreter / アセンブリ : Losetta.dll / サポート: AliceScript1

属性: 関数

#### interpreter_name()

実行中のインタプリタの名前を取得します。この関数によって返される値は[env_impl_name](../environment/env_impl_name.md)と同じです。

```cs title="AliceScript"
namespace Alice.Interpreter;
public string interpreter_name();
```

|戻り値| |
|-|-|
|`string`|実行中のインタプリタの名前。|

### 例
次の例では、実行中のインタプリタの名前を取得します。

```cs title="AliceScript"
using Alice.Interpreter;

var ns = interpreter_name();
```
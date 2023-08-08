---
title: interpreter_name
summary: 実行中のインタプリタの名前を取得します。
date : 2021-11-19
---
### 定義
名前空間:Alice.Interpreter / アセンブリ : Losetta.dll / サポート: AliceScript1

属性: 関数

実行中のインタプリタの名前を取得します。

```cs title="AliceScript"
namespace Alice.Net;
string interpreter_name();
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
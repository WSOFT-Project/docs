---
title: interpreter_namespaces
summary: 現在のインタプリタに登録されている関数名を列挙します。
date : 2021-11-19
---
### 定義
名前空間:Alice.Interpreter / アセンブリ : Losetta.dll / サポート: AliceScript1

属性: 関数

現在のインタプリタに登録されているグローバル関数名を列挙します。

```cs title="AliceScript"
namespace Alice.Net;
string[] interpreter_namespaces();
```

|戻り値| |
|-|-|
|`string[]`|現在のインタプリタに登録されている関数の名前を含む配列。|

特定の名前空間に所属する関数名を列挙します。

```cs title="AliceScript"
namespace Alice.Net;
string[] interpreter_namespaces(string spaceName);
```

|引数| |
|-|-|
|`spaceName`|取得する対象の名前空間。|

|戻り値| |
|-|-|
|`string[]`|現在のインタプリタに登録されている関数の名前を含む配列。|

### 例
次の例では、現在のインタプリタに登録されている関数名を取得します。

```cs title="AliceScript"
using Alice.Interpreter;

var ns = interpreter_namespaces();
```
---
title: interpreter_functions
summary: 現在のインタプリタに登録されている関数名を列挙します。
date : 2021-11-19
mt_type: function
mt_overloads: 2
mt_title: interpreter_functions()
mt_summary: 現在のインタプリタに登録されているグローバル関数名を列挙します。
mt_title: interpreter_functions(string)
mt_summary: 特定の名前空間に所属する関数名を列挙します。
---

### 定義
名前空間: Alice.Interpreter<br/>
アセンブリ: Losetta.dll<br/>
ソースコード: [Alice.Interpreter.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta/NameSpaces/Alice.Interpreter.cs)

#### interpreter_functions()

現在のインタプリタに登録されているグローバル関数名を列挙します。

```cs title="AliceScript"
namespace Alice.Interpreter;
public array interpreter_functions();
```

|戻り値| |
|-|-|
|`array`|現在のインタプリタに登録されている関数の名前を含む配列。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

#### interpreter_functions(string)

特定の名前空間に所属する関数名を列挙します。

```cs title="AliceScript"
namespace Alice.Interpreter;
public array interpreter_functions(string spaceName);
```

|引数| |
|-|-|
|`spaceName`|取得する対象の名前空間。|

|戻り値| |
|-|-|
|`array`|現在のインタプリタに登録されている関数の名前を含む配列。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 例
次の例では、現在のインタプリタに登録されている関数名を取得します。

```cs title="AliceScript"
using Alice.Interpreter;

var ns = interpreter_namespaces();
```
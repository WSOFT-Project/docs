---
title: interpreter_globalVariables
summary: 現在のインタプリタに登録されているグローバル変数名を列挙します。
date : 2021-11-19
mt_type: function
mt_title: interpreter_globalVariables()
---

### 定義
名前空間: Alice.Interpreter<br/>
アセンブリ: Losetta.dll<br/>
ソースコード: [Alice.Interpreter.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta/NameSpaces/Alice.Interpreter.cs)


#### interpreter_globalVariables()

現在のインタプリタに登録されているグローバル変数名を列挙します。

```cs title="AliceScript"
namespace Alice.Interpreter;
public string[] interpreter_globalVariables();
```

|戻り値| |
|-|-|
|`string[]`|現在のインタプリタに登録されているグローバル変数の名前を含む配列。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
次の例では、現在のインタプリタに登録されているグローバル変数名を取得します。

```cs title="AliceScript"
using Alice.Interpreter;

var ns = interpreter_globalVariables();
```
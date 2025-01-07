---
title: interpreter_name
summary: 実行中のインタプリタの名前を取得します。
date : 2021-11-19
mt_type: function
mt_title: interpreter_name()
---

### 定義
名前空間: Alice.Interpreter<br/>
アセンブリ: Losetta.dll<br/>
ソースコード: [Alice.Interpreter.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta/NameSpaces/Alice.Interpreter.cs)

#### interpreter_name()

実行中のインタプリタの名前を取得します。この関数によって返される値は[env_impl_name](../environment/env_impl_name.md)と同じです。

```cs title="AliceScript"
namespace Alice.Interpreter;
public string interpreter_name();
```

|戻り値| |
|-|-|
|`string`|実行中のインタプリタの名前。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 例
次の例では、実行中のインタプリタの名前を取得します。

```cs title="AliceScript"
using Alice.Interpreter;

var ns = interpreter_name();
```
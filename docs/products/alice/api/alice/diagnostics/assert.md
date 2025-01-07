---
title: assert
summary: 指定された条件がtrueとなるかをテストし、falseとなる場合は例外をスローします。
date : 2023-12-30
mt_type: function
mt_overloads: 2
mt_title: assert(bool)
mt_summary: 指定された条件がtrueとなるかをテストし、falseとなる場合は「アサーションが失敗しました」という文言の例外をスローします。
mt_title: assert(bool,string)
mt_summary: 指定された条件がtrueとなるかをテストし、falseとなる場合は指定されたメッセージとともに例外をスローします。
---

### 定義
名前空間: Alice.Diagnostics<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Diagnostics.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Diagnostics.cs)

#### assert(bool)

指定された条件が`true`となるかをテストし、`false`となる場合は「`アサーションが失敗しました`」という文言の例外をスローします。

```cs title="AliceScript"
namespace Alice.Diagnostics;
public void assert(bool condition);
```

|引数| |
|-|-|
|`condition`|`true`であると期待する値|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0、4|
    |AliceSister|3.0、4|
    |Losetta|0.10、0.11|

#### assert(bool,string)

指定された条件が`true`となるかをテストし、`false`となる場合は指定されたメッセージとともに例外をスローします。

```cs title="AliceScript"
namespace Alice.Diagnostics;
public void assert(bool condition, string message);
```

|引数| |
|-|-|
|`condition`|`true`であると期待する値|
|`message`|`false`と評価されたときに発生する例外に使用するメッセージ|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0、4|
    |AliceSister|3.0、4|
    |Losetta|0.10、0.11|

### 説明
この関数は、`condition`が`false`と評価されたときに[0x04c ASSERTION_ERROR](../../../exceptions/0x04c.md)をスローします。

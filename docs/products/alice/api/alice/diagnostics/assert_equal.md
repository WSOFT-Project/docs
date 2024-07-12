---
title: assert_equal
summary: 指定された変数が等しいかをテストし、等しくない場合は例外をスローします。
date : 2023-12-30
mt_type: function
mt_overloads: 2
mt_title: assert_equal(variable,variable)
mt_summary: 指定された変数が等しいかをテストし、等しくない場合は「`アサーションが失敗しました`」という文言の例外をスローします。
mt_title: assert_equal(variable,variable,string)
mt_summary: 指定された変数が等しいかをテストし、等しくない場合は指定されたメッセージとともに例外をスローします。
---

### 定義
名前空間: Alice.Diagnostics<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Diagnostics.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Diagnostics.cs)

#### assert_equal(variable,variable)

指定された変数が等しいかをテストし、等しくない場合は「`アサーションが失敗しました`」という文言の例外をスローします。

```cs title="AliceScript"
namespace Alice.Diagnostics;
public void assert_equal(variable expected, variable actual);
```

|引数| |
|-|-|
|`expected`|このテストで期待する値|
|`actual`|このテストの実際の値|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

#### assert_equal(variable,variable,string)

指定された変数が等しいかをテストし、等しくない場合は指定されたメッセージとともに例外をスローします。

```cs title="AliceScript"
namespace Alice.Diagnostics;
public void assert_equal(variable expected, variable actual, string message);
```

|引数| |
|-|-|
|`expected`|このテストで期待する値|
|`actual`|このテストの実際の値|
|`message`|`false`と評価されたときに発生する例外に使用するメッセージ|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 説明
この関数は、`expected`が`actual`と等しくないと評価されたときに[0x04c ASSERTION_ERROR](../../../exceptions/0x04c.md)をスローします。

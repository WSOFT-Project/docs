---
title: assert_equal
summary: 指定された変数が等しいかをテストし、等しくない場合は例外をスローします。
date : 2023-12-30
---

### 定義
名前空間:Alice.Diagnostics / アセンブリ : Losetta.Runtime.dll / サポート: Alice3.0

属性: 関数

指定された変数が等しいかをテストし、等しくない場合は例外をスローします。

```cs title="AliceScript"
namespace Alice.Diagnostics;
public void assert_equal(variable expected, variable actual);
```

|引数| |
|-|-|
|`expected`|このテストで期待する値|
|`actual`|このテストの実際の値|

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


### 説明
この関数は、`expected`が`actual`と等しいと評価されたときに[0x04c ASSERTION_ERROR](../../../exceptions/0x04c.md)をスローします。

`message`を指定しなかった場合、「`アサーションが失敗しました`」という文言の例外をスローします。
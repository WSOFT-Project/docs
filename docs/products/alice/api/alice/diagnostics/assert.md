---
title: assert
summary: 指定された条件がtrueとなるかをテストし、falseとなる場合は例外をスローします。
date : 2023-12-30
---

### 定義
名前空間:Alice.Diagnostics / アセンブリ : Losetta.Runtime.dll / サポート: Alice3.0

属性: 関数

#### assert(bool)

指定された条件が`true`となるかをテストし、`false`となる場合は「`アサーションが失敗しました`」という文言の例外をスローします。

```cs title="AliceScript"
namespace Alice.Diagnostics;
public void assert(bool condition);
```

|引数| |
|-|-|
|`condition`|`true`であると期待する値|

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


### 説明
この関数は、`condition`が`false`と評価されたときに[0x04c ASSERTION_ERROR](../../../exceptions/0x04c.md)をスローします。

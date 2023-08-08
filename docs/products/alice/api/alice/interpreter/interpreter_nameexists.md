---
title: interpreter_nameexists
summary: 特定の文字列を名前が使用されているかどうかを表す値を取得します。
date : 2022-01-16
---
### 定義
名前空間:Alice.Interpreter / アセンブリ : Losetta.dll / サポート: AliceScriptGM

属性: 関数

特定の文字列を名前が使用されているかどうかを表す値を取得します。

```cs title="AliceScript"
namespace Alice.Net;
bool interpreter_nameexists(string name);
```

|引数| |
|-|-|
|`name`|調べる名前を表す文字列。|

|戻り値| |
|-|-|
|`bool`|`name`が使用されていれば`true`、それ以外の場合は`false`。|
### 例
次の例では、`alpha`という変数を定義して、その名前が使用されていることを確認します。

```cs title="AliceScript"
using Alice.Interpreter;

var alpha;
interpreter_nameexists("alpha");
```
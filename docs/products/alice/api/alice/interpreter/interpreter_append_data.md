---
title: interpreter_append_output
summary: 指定したデータを標準データ出力に書き込みます。
date : 2022-01-16
---
### 定義
名前空間:Alice.Interpreter / アセンブリ : Losetta.dll / サポート: AliceScriptGM

属性: 関数

#### interpreter_append_data(variable,bool)

指定したオブジェクトの文字列表現を標準データ出力に書き込みます。

```cs title="AliceScript"
namespace Alice.Interpreter;
public bool interpreter_append_data(variable item,bool isNewLine=false);
```

|引数| |
|-|-|
|`item`|書き込むオブジェクト。|
|`isNewLine`|書き込み後、標準出力に現在の環境で定義されている改行文字を書き込むかどうかを表す値。規定値は`false`です。|

|戻り値| |
|-|-|
|`bool`|出力が受理された場合は`true`、それ以外の場合は`false`。|
### 例
次の例では、標準データ出力にテキストを書き込みます。

```cs title="AliceScript"
using Alice.Interpreter;

interpreter_append_output("Hello,World!");
```
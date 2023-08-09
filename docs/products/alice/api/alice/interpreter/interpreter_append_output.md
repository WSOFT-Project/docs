---
title: interpreter_append_output
summary: 指定したデータを標準出力に書き込みます。
date : 2022-01-16
---
### 定義
名前空間:Alice.Interpreter / アセンブリ : Losetta.dll / サポート: AliceScriptGM

属性: 関数

指定したオブジェクトの文字列表現を標準出力に書き込みます。[print](../print.md)関数や[write](../write.md)関数は本質的にこの関数の薄いラッパーです。

```cs title="AliceScript"
namespace Alice.Interpreter;
void interpreter_append_output(variable item,bool isNewLine=false);
```

|引数| |
|-|-|
|`item`|書き込むオブジェクト。|
|`isNewLine`|書き込み後、標準出力に現在の環境で定義されている改行文字を書き込むかどうかを表す値。規定値は`false`です。|

### 例
次の例では、標準出力にテキストを書き込みます。

```cs title="AliceScript"
using Alice.Interpreter;

interpreter_append_output("Hello,World!");
```
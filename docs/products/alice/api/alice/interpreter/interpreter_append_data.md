---
title: interpreter_append_output
summary: 指定したオブジェクトの文字列表現を標準データ出力に書き込みます。
date : 2022-01-16
mt_type: function
mt_title: interpreter_append_data(variable,bool)
---

### 定義
名前空間: Alice.Interpreter<br/>
アセンブリ: Losetta.dll<br/>
ソースコード: [Alice.Interpreter.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta/NameSpaces/Alice.Interpreter.cs)

#### interpreter_append_data(variable,bool)

指定したオブジェクトの文字列表現を標準データ出力に書き込みます。

```cs title="AliceScript"
namespace Alice.Interpreter;
public bool interpreter_append_data(variable item,bool isNewLine=false);
```

|引数| |
|-|-|
|`item`|書き込むオブジェクト。|
|`isNewLine`|書き込み後、標準出力に現在の環境で定義されている改行文字を書き込むかどうかを表す値。既定値は`false`です。|

|戻り値| |
|-|-|
|`bool`|出力が受理された場合は`true`、それ以外の場合は`false`。|

???note "対応: AliceScript GM以降"
    |対応||
    |---|---|
    |AliceScript|GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 例
次の例では、標準データ出力にテキストを書き込みます。

```cs title="AliceScript"
using Alice.Interpreter;

interpreter_append_output("Hello,World!");
```
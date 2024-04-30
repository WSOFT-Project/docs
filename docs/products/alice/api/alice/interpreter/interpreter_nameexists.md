---
title: interpreter_nameexists
summary: 特定の文字列を名前が使用されているかどうかを表す値を取得します。
date : 2022-01-16
---

### 定義
名前空間: Alice.Interpreter<br/>
アセンブリ: Losetta.dll<br/>
実装: [Alice.Interpreter.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta/NameSpaces/Alice.Interpreter.cs)

#### interpreter_nameexists(string)

特定の文字列を名前が使用されているかどうかを表す値を取得します。

```cs title="AliceScript"
namespace Alice.Interpreter;
public bool interpreter_nameexists(string name);
```

|引数| |
|-|-|
|`name`|調べる名前を表す文字列。|

|戻り値| |
|-|-|
|`bool`|`name`が使用されていれば`true`、それ以外の場合は`false`。|

???note "対応: AliceScript GM以降"
    |対応||
    |---|---|
    |AliceScript|GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
次の例では、`alpha`という変数を定義して、その名前が使用されていることを確認します。

```cs title="AliceScript"
using Alice.Interpreter;

var alpha;
interpreter_nameexists("alpha");
```
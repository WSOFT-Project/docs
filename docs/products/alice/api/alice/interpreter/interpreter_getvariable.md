---
title: interpreter_getVariable
summary: 指定された文字列を名前としてもつ変数または定数の値を取得します。
date : 2021-11-19
---

### 定義
名前空間: Alice.Interpreter<br/>
アセンブリ: Losetta.dll<br/>
ソースコード: [Alice.Interpreter.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta/NameSpaces/Alice.Interpreter.cs)

#### interpreter_getVariable(string)

指定された文字列を名前としてもつ変数または定数の値を取得します。

```cs title="AliceScript"
namespace Alice.Interpreter;
public variable interpreter_getVariable(string name);
```

|引数| |
|-|-|
|`name`|取得する変数または定数の名前|

|戻り値| |
|-|-|
|`variable`|名前が`name`の変数または定数の値。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 説明

`name`という名前の変数または定数が現在のスクリプトかグローバルに存在しない場合は[0x004](../../../general/exceptions/index.md)例外が発生します。

### 例
次の例では、`a`という名前の変数を定義し、その値を名前を指定して取得します。

```cs title="AliceScript"
using Alice.Interpreter;

var a = 1;
var a_dash = interpreter_getVariable("a");
print(a_dash==a);//出力例:true
```
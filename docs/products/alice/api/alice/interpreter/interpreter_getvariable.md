---
title: interpreter_getVariable
summary: 指定された文字列を名前としてもつ変数または定数の値を取得します。
date : 2021-11-19
---
### 定義
名前空間:Alice.Interpreter / アセンブリ : Losetta.dll / サポート: AliceScript1

属性: 関数

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

`name`という名前の変数または定数が現在のスクリプトかグローバルに存在しない場合は[0x004](../../../general/exceptions/index.md)例外が発生します。

### 例
次の例では、`a`という名前の変数を定義し、その値を名前を指定して取得します。

```cs title="AliceScript"
using Alice.Interpreter;

var a = 1;
var a_dash = interpreter_getVariable("a");
print(a_dash==a);//出力例:true
```
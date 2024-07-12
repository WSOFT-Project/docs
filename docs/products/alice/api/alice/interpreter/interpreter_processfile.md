---
title: interpreter_processfile
summary: 指定されたスクリプトファイルを実行します。
date : 2021-11-19
mt_type: function
mt_title: interpreter_processfile(string,bool)
---

### 定義
名前空間: Alice.Interpreter<br/>
アセンブリ: Losetta.dll<br/>
ソースコード: [Alice.Interpreter.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta/NameSpaces/Alice.Interpreter.cs)

#### interpreter_processfile(string,bool)

指定されたスクリプトファイルをトップレベルのスクリプトとして実行します。
現在のスクリプトにファイルを読み込む[include](../include.md)とは異なります。

```cs title="AliceScript"
namespace Alice.Interpreter;
public variable interpreter_processfile(string path,bool mainFile=false);
```

|引数| |
|-|-|
|`path`|実行するスクリプトファイルのパス。|
|`mainFile`|メインファイルとして評価する場合は`true`、それ以外の場合は`false`。|

|戻り値| |
|-|-|
|`variable`|スクリプトを評価した結果の値。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
次の例では、`script.txt`を読み込み評価します。

```cs title="AliceScript"
using Alice.Interpreter;

var result = interpreter_processfile("script.txt");
```
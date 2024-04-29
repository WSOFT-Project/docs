---
title: interpreter_processfile
summary: 指定されたスクリプトファイルを実行します。
date : 2021-11-19
---
### 定義
名前空間:Alice.Interpreter / アセンブリ : Losetta.dll / サポート: AliceScript1

属性: 関数

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

### 例
次の例では、`script.txt`を読み込み評価します。

```cs title="AliceScript"
using Alice.Interpreter;

var result = interpreter_processfile("script.txt");
```
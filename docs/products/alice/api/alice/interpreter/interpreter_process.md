---
title: interpreter_process
summary: 指定された文字列を実行・評価します。
date : 2021-11-19
---

### 定義
名前空間: Alice.Interpreter<br/>
アセンブリ: Losetta.dll<br/>
実装: [Alice.Interpreter.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta/NameSpaces/Alice.Interpreter.cs)

!!!warning "警告"
    文字列を実行・評価することは、非常に大きなセキュリティ上の懸念を伴います。`interpreter_process`を使用すると、悪意のある者が任意のコードを実行することがあまりにも簡単になります。下記の、考慮事項を参照してください。

#### interpreter_process(string,string,bool)

指定された文字列をトップレベルのスクリプトとして実行・評価します。

```cs title="AliceScript"
namespace Alice.Interpreter;
public variable interpreter_process(string script,string filename="",bool mainFile=false);
```

|引数| |
|-|-|
|`script`|評価する式または文を含む文字列。|
|`filename`|例外発生時等に処理するためのスクリプトに設定される名前。|
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

### 考慮事項
`interpreter_process`は潜在的に非常に大きなセキュリティリスクを含みます。
悪意のある第三者に影響を受ける可能性のある文字列でこの関数を実行すると、そのインタプリターの権限において、ユーザーのマシン上で悪意のあるコードを実行してしまう可能性があります。

この関数は文字列をトップレベルのスクリプトとして実行します。そのため、グローバルに定義されていない変数あるいは関数を参照することはできません。

極端に古いバージョンのWSOFTScriptでは関数を他の関数の引数としたり、イベントとして登録する場合にコードを文字列として使用していましたが、AliceScriptでは[デリゲート](../../delegate/index.md)を使用してください。[イベント](../../../general/event.md)の場合も同様です。
AliceScriptのAPIでは、すべてデリゲートを使用する前提で設計されています。
次に例を示します。

```cs title="AliceScript"
// 旧型式 : onclick("print('Hello,World')");
onclick( _=>print("Hello,World"));
```

特定の名前の変数または定数の値を取得する方法としてこの関数を使用しないでください。
そのような用法には、[interpreter_getVariable](./interpreter_getvariable.md)を使用する方が安全です。
### 例
次の例では、文字列"`1+2+3`"を評価し、式を計算します。

```cs title="AliceScript"
using Alice.Interpreter;

string expression = "1+2+3";
var result = interpreter_process(expression);
print(result);//出力例:6
```
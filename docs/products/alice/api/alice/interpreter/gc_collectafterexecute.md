---
title: gc_collectAfterExecute
summary: スクリプトの評価が終了するたびにガページコレクションを実行するかどうかの値を取得または設定します。
date : 2021-07-28
---

### 定義
名前空間: Alice.Interpreter<br/>
アセンブリ: Losetta.dll<br/>
実装: [Alice.Interpreter.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta/NameSpaces/Alice.Interpreter.cs)

#### gc_collectAfterExecute()

スクリプトの評価が終了するたびにガページコレクションを実行するかどうかの値を取得します。

```cs title="AliceScript"
namespace Alice.Interpreter;
public bool gc_collectAfterExecute();
```

|戻り値| |
|-|-|
|`bool`|スクリプトの評価が終了するたびにガページコレクションを実行する場合は`true`、それ以外の場合は`false`。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

#### gc_collectAfterExecute()

スクリプトの評価が終了するたびにガページコレクションを実行するかどうかの値を取得または設定します。

```cs title="AliceScript"
namespace Alice.Interpreter;
public bool gc_collectAfterExecute(bool collectAfterExecute);
```

|引数| |
|-|-|
|`collectAfterExecute`|スクリプトの評価が終了するたびにガページコレクションを実行する場合は`true`、それ以外の場合は`false`。|

|戻り値| |
|-|-|
|`bool`|スクリプトの評価が終了するたびにガページコレクションを実行する場合は`true`、それ以外の場合は`false`。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
次の例では、スクリプトの評価が終了するたびにガページコレクションを実行するように構成します。

```cs title="AliceScript"
using Alice.Interpreter;

gc_collectAfterExecute(true);
```
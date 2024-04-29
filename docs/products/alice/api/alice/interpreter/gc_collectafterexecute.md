---
title: gc_collectAfterExecute
summary: スクリプトの評価が終了するたびにガページコレクションを実行するかどうかの値を取得または設定します。
date : 2021-07-28
---
### 定義
名前空間:Alice.Interpreter / アセンブリ : Losetta.dll / サポート: AliceScript1

属性: 関数

#### gc_collectAfterExecute()

スクリプトの評価が終了するたびにガページコレクションを実行するかどうかの値を取得します。

```cs title="AliceScript"
namespace Alice.Interpreter;
public bool gc_collectAfterExecute();
```

|戻り値| |
|-|-|
|`bool`|スクリプトの評価が終了するたびにガページコレクションを実行する場合は`true`、それ以外の場合は`false`。|

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

### 例
次の例では、スクリプトの評価が終了するたびにガページコレクションを実行するように構成します。

```cs title="AliceScript"
using Alice.Interpreter;

gc_collectAfterExecute(true);
```
---
title: env_commandLine
summary: このプロセス用のコマンド ラインを取得します
---
### 定義
名前空間:Alice.Environment / アセンブリ : Losetta.Runtime.dll / サポート: Alice2.0

属性: 関数

#### env_commandLine()

このプロセス用のコマンド ラインを取得します

```cs title="AliceScript"
namespace Alice.Environment;
public string env_commandLine();
```

|戻り値| |
|-|-|
|`string`|コマンド ラインの引数を格納している文字列。|

### 説明
このプロパティは、プログラム名と、現在のプロセスが開始されたときにコマンド ラインで指定された引数へのアクセスを提供します。

プログラム名にはパス情報を含めることができますが、これを行う必要はありません。 `env_commandLineArgs`関数を使用すれば、コマンド ライン情報を取得できます。

コマンド ライン バッファーの最大サイズは、特定の文字数に設定されていません。これは、コンピューターで実行されている Windows オペレーティング システムによって異なります。
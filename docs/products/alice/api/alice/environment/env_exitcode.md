---
title: env_exitCode
summary: 現在のプロセスの終了コードを取得または設定します。
date: 2024-09-07
mt_type: value
---
### 定義
名前空間: Alice.Environment<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Environment.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Environment.cs)


現在のプロセスの終了コードを取得または設定します。

```cs title="AliceScript"
namespace Alice.Environment;
public number env_exitCode;
```

### 値
|値| |
|-|-|
|`number`|OSに通知する予定の終了コード|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0、4|
    |AliceSister|3.0、4|
    |Losetta|0.10、0.11|

### 説明
このプロパティは[exit](../exit.md)関数とは異なり、終了ステータスを設定するのみで、プロセスは終了しません。

プロセスで処理が正常に完了したことを示すには、この値を0に設定します。
反対に、プロセスで処理が正常に完了しなかったことを示すには、この値を0以外に設定します。

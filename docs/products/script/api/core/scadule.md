---
title: scadule
summary: 指定した時間後にタスクを実行することを予約します
---
### 定義
アセンブリ：WSOFTScript.dll,WSOFTScript.X.dll

指定した時間後にタスクを実行することを予約します。タスクは別スレッドで実行されます。

```cs title="WSOFTScript"
void scadule(number time,Delegate task);
```

|引数| |
|-|-|
|`time`| デリゲートの実行を待機する時間（ミリ秒単位）|
|`task`|指定時間後実行するタスクを含むデリゲート|

### 例
以下は、3秒後に`Hello,World`を表示します。

```cs title="WSOFTScript"
schadule(3000,delegate(){print("Hello,World!");});
```

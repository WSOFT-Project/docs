---
title: subtask
summary: 別スレッドでタスクを実行します
---
### 定義
アセンブリ：WSOFTScript.dll,WSOFTScript.X.dll

別スレッドでタスクを実行します

```cs title="WSOFTScript"
void subtask(delegate task);
```

|引数| |
|-|-|
|`task`|タスクを含むデリゲート|

### 例
以下は、別スレッドから`Hello,World`を表示します。

```cs title="WSOFTScript"
subtask(delegate(){print("Hello,World!");});
```

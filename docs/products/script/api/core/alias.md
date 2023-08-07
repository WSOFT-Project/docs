---
title: alias
summary: 関数の別名を設定します
---
### 定義
アセンブリ：WSOFTScript.dll,WSOFTScript.X.dll

指定された関数の別名を設定します

```cs title="WSOFTScript"
void alias(string funcName,string newName);
```

|引数| |
|-|-|
|`funcName`|設定する関数の名前|
|`task`|新しい関数の名前|

### 例
以下は、`print`関数に`console_write`という別名をつけ、実行します

```cs title="WSOFTScript"
alias("print","console_write");
console_write("Hello,World");
```

---
title: check
summary: スクリプトの構文チェックを行います
---
### 定義
アセンブリ：WSOFTScript.dll,WSOFTScript.X.dll

スクリプトの構文チェックを行います

```cs title="WSOFTScript"
number check(string script);
```

|引数| |
|-|-|
|`script`|チェックするスクリプトの文字列形式|

|戻り値| |
|-|-|
|`number`|スクリプトに構文の問題がなければ`1`、それ以外の場合は`1`|

### 例
以下は、`print("Hello,World");`に構文的な問題がないことを確かめます。

```cs title="WSOFTScript"
check("print(\"Hello,World\");");
```

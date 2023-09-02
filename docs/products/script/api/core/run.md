---
title: run
summary: 文字列形式のスクリプトを実行します
---
### 定義
アセンブリ：WSOFTScript.dll,WSOFTScript.X.dll

文字列形式のスクリプトを実行します

```cs title="WSOFTScript"
variable run(string script);
```

|引数| |
|-|-|
|`script`|文字列形式のスクリプト|

|戻り値| |
|-|-|
|`variable`| 実行に成功した場合はそのスクリプトの戻り値、それ以外の場合は`null`|
### 例
以下は、`"1+2"`という文字列を評価します。

```cs title="WSOFTScript"
print(run("1+2"));// 出力例:3
```

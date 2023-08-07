---
title: load
summary: スクリプトパッケージを実行します
---
### 定義
アセンブリ：WSOFTScript.dll,WSOFTScript.X.dll

スクリプトパッケージを実行します

```cs title="WSOFTScript"
void load(string path);
```

|引数| |
|-|-|
|`path`|スクリプトパッケージファイルの出力先|

### 例
以下は、`hello.wsp`を実行します

```cs title="WSOFTScript"
load("hello.wsp");
```

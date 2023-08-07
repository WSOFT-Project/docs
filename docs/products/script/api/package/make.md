---
title: make
summary: スクリプトからパッケージを作成します
---
### 定義
アセンブリ：WSOFTScript.dll,WSOFTScript.X.dll

スクリプトからパッケージを作成します

```cs title="WSOFTScript"
void make(string script,string path);
```

|引数| |
|-|-|
|`script`| パッケージで定義するスクリプトの文字列形式|
|`path`|パッケージファイルの出力先|

### 例
以下は、読み込むと`Hello,World`を表示するパッケージを`hello.wsp`に出力します。

```cs title="WSOFTScript"
make("print('Hello,World')","hello.wsp");
```

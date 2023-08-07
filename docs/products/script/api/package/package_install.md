---
title: package_install
summary: アセンブリをインストールします
---
### 定義
アセンブリ：WSOFTScript.dll,WSOFTScript.X.dll

アセンブリをインストールします

```cs title="WSOFTScript"
void package_install(string name);
```

|引数| |
|-|-|
|`name`| インストールするアセンブリの名前|

### 例
以下は、`WSOFTScript.Beep`をインストールします。

```cs title="WSOFTScript"
package_install("WSOFTScript.Beep");
```

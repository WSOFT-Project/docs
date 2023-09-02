---
title: package
summary: リモートのアセンブリを読み込みます
---
### 定義
アセンブリ：WSOFTScript.dll,WSOFTScript.X.dll

リモートのアセンブリを読み込みます

```cs title="WSOFTScript"
void package(string name);
```

|引数| |
|-|-|
|`name`| 読み込むアセンブリの名前|

### 例
以下は、`WSOFTScript.Beep`を読み込みます。

```cs title="WSOFTScript"
package("WSOFTScript.Beep");
```

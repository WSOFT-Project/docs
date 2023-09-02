---
title: dllimport
summary: 対応する.NETアセンブリを読み込みます
---
### 定義
アセンブリ：WSOFTScript.dll,WSOFTScript.X.dll

対応する.NETアセンブリを読み込みます

```cs title="WSOFTScript"
void dllImport(string path);
```

|引数| |
|-|-|
|`path`| 読み込むアセンブリのパス。読み込めないまたは存在しない場合は、エラーが発生します。|

### 例
以下は、`lib.dll`を読み込みます。

```cs title="WSOFTScript"
dllimport("lib.dll");
```

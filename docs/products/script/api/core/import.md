---
title: import
summary: WSOFTPackageまたは対応する.NETアセンブリを読み込みます
---
### 定義
アセンブリ：WSOFTScript.dll,WSOFTScript.X.dll

WSOFTPackageまたは対応する.NETアセンブリを読み込みます

```cs title="WSOFTScript"
void import(string path);
```

|引数| |
|-|-|
|`path`| 読み込むファイルのパス。読み込めないまたは存在しない場合は、エラーが発生します。|

### 例
以下は、`lib.wsp`を読み込みます。

```cs title="WSOFTScript"
import("lib.wsp");
```

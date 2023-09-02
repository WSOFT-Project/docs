---
title: wsver
summary: 現在のWSOFTScriptのバージョンを返します。
---
### 定義
アセンブリ：WSOFTScript.dll,WSOFTScript.X.dll

現在のWSOFTScriptのバージョンを返します。

```cs title="WSOFTScript"
string wsver(number isMiddleVer=0);
```

|引数| |
|-|-|
|`isMiddleVer`| 数値のみを返す場合は`1`、それ以外の場合は`0`|

|戻り値| |
|-|-|
|`string`|`isMiddleVer`が`1`であればバージョン番号、それ以外の場合は`WSOFTScript バージョン {識別子}`|

### 例
以下は、WSOFTScriptのバージョンを表示します。

```cs title="WSOFTScript"
print(wsver);
```

---
title: package_set
summary: パッケージマネージャーが使用する参照先アドレスを設定します
---
### 定義
アセンブリ：WSOFTScript.dll,WSOFTScript.X.dll

パッケージマネージャーが使用する参照先アドレスを設定し、カレントディレクトリの`pg_set`ファイルに書き込みます。

```cs title="WSOFTScript"
void package_set(string location);
```

|引数| |
|-|-|
|`location`| パッケージマネージャーが参照するアドレス|

### 例
以下は、`http://wsoft.gq/script/package`を参照先アドレスに設定します。

```cs title="WSOFTScript"
package_set("http://wsoft.gq/script/package");
```

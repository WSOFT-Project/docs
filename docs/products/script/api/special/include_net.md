---
title: include_net
summary: インターネット上のスクリプトを読み込み、実行します
---
### 定義
アセンブリ：WSOFTScript.dll,WSOFTScript.X.dll

インターネット上のスクリプトを読み込み、実行します

```cs title="WSOFTScript"
variable include_net(string location);
```

|引数| |
|-|-|
|`location`| 取得するスクリプトのUrl|

|戻り値| |
|-|-|
|`variable`| 実行に成功した場合はそのスクリプトの戻り値、それ以外の場合は`null`|

### 例
以下は、`https://example.com/main.wss`を実行する例です。

```cs title="WSOFTScript"
r=include_net("https://example.com/main.wss");
print(r);
```

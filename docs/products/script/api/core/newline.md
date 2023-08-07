---
title: newline
summary: 現在の環境の改行文字列を取得します
---
### 定義
アセンブリ：WSOFTScript.dll,WSOFTScript.X.dll

現在の環境の改行文字列を取得します

```cs title="WSOFTScript"
string newline();
```

|戻り値| |
|-|-|
|`string`|現在の環境で設定されている改行文字あるいは改行文字列|

### 例
以下は、改行後に`Hello,World`を表示します。

```cs title="WSOFTScript"
print(newline+"Hello,World");
```

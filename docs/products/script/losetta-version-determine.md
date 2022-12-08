---
title : 使用されているLosettaのバージョンを確認する
summary : WSOFTScriptやAliceScriptはLosettaの技術が使用されています。それらのアプリを開発する場合、どのバージョンのWSOFTScriptやAliceScriptがどのバージョンのLosettaの技術を採用しているかを確認しなければならない場合があります。この記事では、それぞれのバージョンとLosettaのバージョンとの対応について説明します。
---

Losettaはその歴史を通して、WSOFTScriptやAliceScript等様々な名前とバージョンへと変化していきました。そのため、それぞれのバージョンの対応関係を見出すことが困難でもありました。

### 使用されているWSOFTScriptのバージョンを確認する
WSOFTScriptは簡単なクエリを実行することで、稼働中のバージョンを識別することができます。バージョンは文字列形式で返却されます。

```js title="WSOFTScript"
print(wsver);//出力例:WSOFTScript バージョン0.7
```

### 使用されているAliceScriptのバージョンを確認する
AliceScriptはWSOFTScript同様、簡単なクエリを実行することで、稼働中のバージョンを識別することができます。バージョンは規則的な文字列形式で返却されます。

```js title="AliceScript"
print(wsver);//出力例:2.0
```

### WSOFTScriptのバージョンとLosettaのバージョンの対応
WSOFTScriptやAliceScriptのバージョンとLosettaのバージョンは一対一で対応します。

|製品のバージョン|Losettaのバージョン
|---|---|
|WSOFTScript 0.01|Losetta 0.1|
|WSOFTScript 0.02|Losetta 0.2|
|WSOFTScript 0.03|Losetta 0.3|
|WSOFTScript 0.04|Losetta 0.4|
|WSOFTScript 0.05|Losetta 0.5|
|WSOFTScript 0.06|Losetta 0.6|
|WSOFTScript 0.07|Losetta 0.7|
|WSOFTScript 0.07 R2|Losetta 0.7.2|
|WSOFTScript 0.07 R3|Losetta 0.7.3|
|WSOFTScript 0.07 R4|Losetta 0.7.4|
|WSOFTScript 2020 LTS|Losetta 0.7.5|
|AliceScript NightyBuild 818|Losetta 0.8.0|
|AliceScript NightyBuild 922|Losetta 0.8.1|
|AliceScript NightyBuild 925|Losetta 0.8.2|
|AliceScript NightyBuild 926|Losetta 0.8.3|
|AliceScript NightyBuild 1001|Losetta 0.8.4|
|AliceScript NightyBuild 1002|Losetta 0.8.5|
|AliceScript NightyBuild 1003|Losetta 0.8.6|
|AliceScript 1.0|Losetta 0.8.10|
|AliceScript NightyBuild 1023|Losetta 0.8.11|
|AliceScript NightyBuild 1031|Losetta 0.8.12|
|AliceScript NightyBuild 1101|Losetta 0.8.13|
|AliceScript NightyBuild 1102|Losetta 0.8.14|
|AliceScript NightyBuild 1103|Losetta 0.8.15|
|AliceScript NightyBuild 1106|Losetta 0.8.16|
|AliceScript NightyBuild 1108|Losetta 0.8.17|
|AliceScript NightyBuild 1111|Losetta 0.8.18|
|AliceScript NightyBuild 1114|Losetta 0.8.19|
|AliceScript NightyBuild 1119|Losetta 0.8.20|
|AliceScript NightyBuild 1120|Losetta 0.8.21|
|AliceScript NightyBuild 1121|Losetta 0.8.22|
|AliceScript NightyBuild 1122|Losetta 0.8.23|
|AliceScript NightyBuild 1123|Losetta 0.8.24|
|AliceScript NightyBuild 1127|Losetta 0.8.25|
|AliceScript NightyBuild 1204|Losetta 0.8.26|
|AliceScript Release Candidate 2|Losetta 0.8.30|
|AliceScript NightyBuild 1208|Losetta 0.8.31|
|AliceScript NightyBuild 1210|Losetta 0.8.32|
|AliceScript NightyBuild 1211|Losetta 0.8.33|
|AliceScript NightyBuild 1212|Losetta 0.8.34|
|AliceScript NightyBuild 1213|Losetta 0.8.35|
|AliceScript NightyBuild 1222|Losetta 0.8.36|
|AliceScript NightyBuild 1223|Losetta 0.8.37|
|AliceScript NightyBuild 1224|Losetta 0.8.38|
|AliceScript GoldenMaster|Losetta 0.8.50|
|AliceScript NightyBuild 1202|Losetta 0.9.1|
|AliceScript NightyBuild 1205|Losetta 0.9.2|
|AliceScript 2.0|Losetta 0.9.10|
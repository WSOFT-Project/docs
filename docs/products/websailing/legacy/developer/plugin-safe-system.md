---
title : プラグインガードの概要
summary : WebSailingNXに実装されている、プラグインガードシステムについて説明します。
date : 2019-11-20
---
プラグインガードとは、WebSailingNXで読み込まれているプラグインから問題のあるプラグインを取り除くことのできる機能です。

プラグインガードは、**設定**>**セキュリティ**>**プラグインガード**から実行できます。

![プラグインガード](./media/0.jpg)

実行後に**結果を表示**をクリックすると結果を表示できます。

### 説明
プラグインガードは、読み込まれているWSPluginから次に該当するプラグインを検出し、ユーザーに通知します。

- **このバージョンのWebSailingで読み込めないプラグイン**。これは読み込めないので、駆除の必要はありませんが実行できません。
- **署名の検証が出来ないプラグイン**。これはサイドロードしたプラグインの可能性があるので駆除はされませんが警告されます。

次に該当するプラグインは**ユーザーの選択なしに駆除されます**。

- WSOFTによって有害であると通知されたプラグイン。これはユーザーからの報告によるものです。この情報は、`http://wsoft.gq/NX/Security/WSPBL.txt`で公開されています。
- 署名が無効なプラグイン。これはプラグインが名前などを偽装しているか、期限が切れたプラグインである可能性があります。
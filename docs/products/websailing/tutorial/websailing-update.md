---
title : WebSailing Updateを使って最新のWebSailingを導入する
summary : この記事では、WebSailing Updateを使って最新のWebSailingを導入する方法について説明します。
date : 2023-11-12
---

### はじめに
WebSailingを常に最新版に保つことは、セキュリティの向上と最新の機能・パフォーマンスを保つために必要不可欠です。WebSailing NX 118以前のバージョンのWebSailingでは、WebSailingをアップデートするために、毎回最新版のファイルをダウンロードし古いファイルを削除した後、新しいファイルを展開するなどアップデートに複雑な手順が必要でした。

WebSailing NX 119以降のWebSailingには、WebSailing Updateが搭載されています。WebSailing Updateを使用すると、簡単な操作でWebSailingを最新版にアップデートできます。

WebSailing NX 120以降のWebSailingでは、以下のように最新版のWebSailingが使用可能になった際にホーム画面でお知らせが表示されるか、バックグラウンドで自動的に更新が始まります。

![お知らせ](./media/6.png)

## WebSailingを最新版にアップデートする
> [!IMPORTANT] 必要条件
> 更新したいWebSailingが、[バージョン118](./1180.md)([WS276](https://download.wsoft.ws/WS00276))以前の場合は、まず[バージョン119](./1190.md)([WS277](https://download.wsoft.ws/WS00277))に手動でアップデートする必要があります。

### 1. 更新を確認する

1. 「**WebSailingの設定**」を開きます。
2. 設定メニューから「**更新**」を選択します。

[WebSailingの設定を開く](websailing://settings/update/){: .btn .btn-primary }

### 2. 更新をダウンロードする
![WebSailingの設定](./media/7.png)

WebSailingが更新可能な場合、更新ボタンが青色になっています。
WebSailingの更新をダウンロードするには、「**更新**」をクリックします。

![更新をダウンロード](./media/8.png)

更新はバックグラウンドでダウンロードされます。
ダウンロードが完了したら、自動的に次回起動時に更新が予約されます。

この後も、通常通りWebSailingを使用できます。

### 3. 更新をインストールする
![アップデートをインストール](./media/9.png)

更新をダウンロード後、次回WebSailingを起動した際に自動的にアップデートが開始します。

更新のインストール時には、以下の処理が自動的に行われます。

1. アップデートファイルの検証
2. 現在のバージョンのバックアップの作成
3. 現在のバージョンの実行ファイルを`ファイル名.old`に名前変更
4. アップデートファイルの解凍・コピー
5. WebSailingの再起動(新しい実行ファイルの起動)
6. 古いバージョンの実行ファイルを削除
7. `websailing://news/`を開く

![新機能](./media/10.png)

インストールが完了すれば、自動的にWebSailingが再起動し、WebSailingの新機能をお知らせします。これで更新は完了です。

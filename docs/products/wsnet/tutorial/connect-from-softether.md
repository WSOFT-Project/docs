---
title : SoftEtherを使用してWSWANに接続する
summary : この記事では、WindowsやLinux、macOS端末のSoftEtherからWSWANに接続する方法について説明します
date : 2022-10-05
---

### はじめに
Windows環境では、SoftEtherを使用してWSNET/WANに接続できます。Windows環境では**SoftEtherを使用してWSWANに接続する**ことをオススメします。
AndroidやiOS、macOSなど、SoftEtherがサポートされない環境では[OpenVPNを使用してWSWANに接続する](./connetct-from-openvpn.md)こともできます。

初めにSoftEtherダウンロードセンターから各プラットフォームのSoftEther VPNClientをダウンロードしてください。

- [SoftEtherダウンロードセンター](https://www.softether-download.com/ja.aspx)

また、WSWANのユーザーアカウントを準備してください。現在、WSWAN接続サービスの一般公開およびオープンテストは行っていません。

### 接続マネージャーからの設定
SoftEtherVPNClientがインストールされている環境で**SoftEtherVPN クライアント 接続マネージャー**を起動し、**新しい接続設定の作成**をクリックします。

![接続マネージャ](./media/0.jpg)

!!!note "仮想LANカードの作成"
    はじめてSoftEtherVPNクライアントを使用する場合は仮想LANカードの作成が必要です。

### 接続設定の入力
**新しい接続設定のプロパティ**ウィンドウに、必要事項を入力します。

![新しい接続設定のプロパティ](media/1.jpg)

**接続設定名**には任意の名前を指定できます。わかりやすいものを使用してください。

**ホスト名**には接続先のサーバーである`net.wsoft.ws`を指定します。

**ポート名**には接続先のサーバーのポート番号である`443`を指定します。

**ユーザー認証**は、標準パスワード認証を使用できます。WSWANのユーザー名とパスワードを指定してください。

**IPアドレスメッセージを非表示**にできます。

### 接続
完成した接続設定を右クリックし、**接続**を押して接続できます。

![接続](media/2.jpg)

また、**スタートアップ接続に設定**すると、システムが起動したときに自動的に接続できます。
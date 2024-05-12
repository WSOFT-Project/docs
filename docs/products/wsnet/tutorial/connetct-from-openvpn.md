---
title : OpenVPNを使用してWSWANに接続する
summary : この記事では、AndroidやiOS端末などのOpenVPNクライアントからWSWANに接続する方法について説明します
date : 2022-10-15
---

### はじめに
OpenVPNはAndroidやiOS、macOSやLinux、Windowsなど、さまざまなプラットフォームでサポートされています。とくにSoftEtherがサポートされていないAndroidやiOS、macOSなどの環境ではOpenVPNを使用して接続することが必要です。Windows環境では[SoftEtherを使用してWSWANに接続する](./connect-from-softether.md)ことをオススメします。

初めに各プラットフォームのOpenVPNクライアントを端末にインストールしてください。

- [OpenVPN Connect Android版](https://play.google.com/store/apps/details?id=net.openvpn.openvpn)
- [OpenVPN Connect iOS版](https://apps.apple.com/jp/app/openvpn-connect/id590379981)
- [OpenVPN Connect for macOS](https://openvpn.net/client-connect-vpn-for-mac-os/)
- [OpenVPN Connect for Windows](https://openvpn.net/client-connect-vpn-for-windows/)

また、WSWANのユーザーアカウントを準備してください。現在、WSWAN接続サービスの一般公開およびオープンテストは行っていません。

### 設定ファイルの準備
初めに、WSOFTダウンロードセンターからOpenVPN設定ファイルをダウンロードしてください。

---
[ ダウンロード](https://download.wsoft.ws/WS00129){: .btn .btn-primary .bi .bi-download }
---

### OpenVPNアプリで設定
ダウンロードした設定ファイル(`*.ovpn`)をOpenVPN Connectアプリで開きます。

ユーザー名にWSWANのユーザー名を設定し、**SavePassword**にチェックを入れ、WSWANのパスワードを指定します。

設定を保存したら、接続します。これでOpenVPNクライアントからWSWANに接続できました。

#### 設定ファイルの編集
上級ユーザーに向けて、設定ファイルの編集方法を説明します。まずダウンロードした設定ファイルを任意のエディターで開きます。

##### VPNレイヤーの変更
設定ファイル7行目に以下の記述があります。

```txt title="wsnet-wan-openvpn-config.ovpn"
###############################################################################
# Specify the type of the layer of the VPN connection.
#
# To connect to the VPN Server as a "Remote-Access VPN Client PC",
#  specify 'dev tun'. (Layer-3 IP Routing Mode)
#
# To connect to the VPN Server as a bridging equipment of "Site-to-Site VPN",
#  specify 'dev tap'. (Layer-2 Ethernet Bridging Mode)

dev tun # ここを変更
```

> [!IMPORTANT] 対応環境
> この設定はAndroidとiOSでは変更できません。
> そのような環境ではLayer-2接続はサポートされていません。

`dev tun`を`dev tap`に変更すると、OpenVPNクライアントはレイヤー2接続を行います。これは、イーサネットブリッジモードとも呼ばれていて、ブロードキャストパケットの送信が行えます。
これにより、LAN内の対戦ゲームやWindowsのネットワーク共有が使用できるようになります。


##### 接続方法の変更
設定ファイル18行目に以下の記述があります。

```txt title="wsnet-wan-openvpn-config.ovpn"
###############################################################################
# Specify the underlying protocol beyond the Internet.
# Note that this setting must be correspond with the listening setting on
# the VPN Server.
#
# Specify either 'proto tcp' or 'proto udp'.

proto tcp # ここを変更
```

`proto tcp`を`proto udp`に変更するとコネクションにTCPではなくUDPを使用するようになります。UDP通信が許可されている場合は、この設定を変更することでスルースプットの向上が期待できます。ファイアウォールなどで許可されていない環境では、この設定は変更できません。

##### HTTPプロキシの設定
設定ファイル39行目に以下の記述があります。

```txt title="wsnet-wan-openvpn-config.ovpn"
###############################################################################
# The HTTP/HTTPS proxy setting.
#
# Only if you have to use the Internet via a proxy, uncomment the below
# two lines and specify the proxy address and the port number.
# In the case of using proxy-authentication, refer the OpenVPN manual.

;http-proxy-retry # ここを変更
;http-proxy [proxy server] [proxy port] # ここも変更
```

`http-proxy`をコメントアウトし、サーバーとポート番号を指定すると、接続にそのプロキシサーバーを経由するようになります。
---
title : OpenVPNを使用してWSWANに接続する
summary : この記事では、AndroidやiOS端末などのOpenVPNクライアントからWSWANに接続する方法について説明します
---

### はじめに
AndroidやiOS、macOSやLinux、Windowsなど、OpenVPNは様々なプラットフォームでサポートされています。特にSoftEtherがサポートされていないAndroidやiOSなどの環境ではOpenVPNを使用して接続することが必要です。Windows環境では[SoftEtherを使用してWSWANに接続する](./connect-from-softether.md)ことをおすすめします。

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

一般の方は、設定ファイルの編集は不要です。次のセクションに進んでください。

#### 設定ファイルの編集
上級ユーザーに向けて、設定ファイルの編集方法を説明します。まずダウンロードした設定ファイルを任意のエディタで開きます。

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

`dev tun`を`dev tap`に変更すると、OpenVPNクライアントはレイヤー2接続を行います。これは、イーサネットブリッジモードとも呼ばれます。

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

`proto tcp`を`proto udp`に変更するとコネクションにTCPではなくUDPを使用するようになります。しかし現在、WSNET/WANサーバーはOpenVPNクライアントからのUDP接続を受け入れていません。この設定は変更しないでください。

##### 接続先の変更
設定ファイル28行目に以下の記述があります。

```txt title="wsnet-wan-openvpn-config.ovpn"
###############################################################################
# The destination hostname / IP address, and port number of
# the target VPN Server.
#
# You have to specify as 'remote <HOSTNAME> <PORT>'. You can also
# specify the IP address instead of the hostname.
#

remote net.wsoft.ws 443 # ここを変更
```

`remote`の値を変更するとサーバーとポート番号を変更できます。WSNETのみに接続する場合は`vpn.wsoft.ws 5223`を使用してください。また、WSWANサーバーも`5223`ポートへの接続をサポートしています。

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

### OpenVPNアプリで設定
iOSでも、AndroidでもmacOS、Windowsでも、ダウンロードして設定ファイル(*.ovpn)をOpenVPN Connectアプリで開きます。

ユーザー名にWSWANのユーザー名を設定し、SavePasswordにチェックを入れ、WSWANのパスワードを指定します。

設定を保存したら、接続してみてください。これでOpenVPNクライアントからWSWANに接続できました。
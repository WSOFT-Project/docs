---
title : 証明書のインストール
summary : この記事では、WSNET証明書をコンピュータにインストールする方法について説明します。
---

### はじめに
WSNET内からWSNET第一サーバーで稼働するサイト(WSDriveWebDAV発行サービスやWSOFTダウンロードセンターなど)にアクセスするためにはルート証明書のインストールが必要です。

**この操作は、WSNET内に所属する<span class="text-danger">すべてのコンピュータで必ず実行</span>してください。**

**また、必ずインストール先ストアを、「信頼されたルート証明書」に指定してください。自動設定はできません。**

### 証明書のダウンロード
Cloudflareからルート証明書をダウンロードしてください。

---
[ ダウンロード](https://developers.cloudflare.com/ssl/static/origin_ca_rsa_root.pem){: .btn .btn-primary .bi .bi-download }
---

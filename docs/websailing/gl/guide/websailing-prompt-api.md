---
title: WebSailingプロンプトを極める！その１ API を極める
summary: この記事では、WebSailing GLプロンプトの使用方法について説明します。
date : 2019-03-25
author : Taiseiue
author_url : https://github.com/taiseiue
---
!!! warning "サポート終了"
    WebSailing GLシリーズのサポートはすでに終了しています。WSOFTはこのソフトウェアを実行して起こったいかなる事象についても責任を負いかねます。

WebSailingプロンプトはあまり使われていない機能の一つだと思いますが、実は2.1アップデートで大きく機能性が拡充されました。今回はそんなWebSailingプロンプトのコマンドを見ていきましょう。

「api get （ダウンロードしたいAPI名）」

まず初めに紹介するのはapiコマンドです。このコマンドはWebSailingのサーバーから拡張コマンド（以下API）をダウンロードするときに使います。

例えば、

「api get hello」

と入力すればHelloAPIをダウンロードできます。

これは

「hello 」

と入力することで起動できます（どうなるのかはご自分の目で確かめてくださいね！）

そこで私が紹介したいのがadminsというAPIです

「api get admins」

と入力することで入手できます。このAPIは管理者権限でほかのAPIを実行できるという優れものです。文法は、

「admins （管理者権限で実行したいAPPI名）」

です。例えばadminsについてくる管理者権限確認ツールのadminkを実行してみましょう

「admins admink」

UACのダイアログが表示され、管理者ですとかえってこれば成功です！

ちなみにインストール先は共通で、「C:\WebSailing\API」に保存されます。

では今回はここまで！次回もぜひ見てくださいね。
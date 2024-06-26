---
title : ライブラリエラー500について
summary : この記事では、PlusLibraryでライブラリエラー500が発生する場合について説明します。
date : 2020-01-18
---

### 概要
このエラーはPlusLibraryからプラグインをダウンロードしたときに発生します。このエラーが発生することは、インストールしようとしたWSMファイルの検証に失敗したことを表しています。

このエラーは、インストール中に[WebSailingのキャッシュをクリア](./how-to-delete-cache.md)した場合にも発生します。


### 対処
PlusLinraryから導入したプラグインで問題が生じている場合は、再度プラグインをダウンロードし直してください。

認証されていないプラグインをサイドロードしようとしている場合は、**開発者モード**を有効にするか、**プラグインの署名を強制しない**ようにWebSailingを構成してください。

### 技術的情報
PlusLibraryから正しいライブラリファイルをダウンロードできませんでした。インストールまで、WebSailingのインストールされているディレクトリを操作しないでください。

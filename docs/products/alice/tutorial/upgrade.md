---
title : 新しいAliceへのアップグレード
summary : この記事では、Aliceのバージョンをアップグレードする方法や、注意点を説明します。
date: 2024-09-18
---
Aliceの新しいバージョンは毎年リリースされます。古いバージョンのAliceには、サポート期間の間セキュリティ修正と通常のバグ修正が提供されますが、新機能の追加や機能改善は行いません。
このため、新規に開発するアプリケーションについては最新バージョンのAliceScriptを使用することを推奨します。
しかし、既存のアプリケーションをアップグレードする前に、いくつか考慮事項があります。

### アップグレードの動機

- 使用しているAliceのバージョンがサポートされなくなった
- 新しい環境で動作させるには、アップグレードする必要がある
- 新しいバージョンに使いたい文法やAPIがある

### 注意事項

- アップグレード後に非推奨となったか変更された、または廃止された機能はないか
- 現在の環境で新しいバージョンが動作するか
- 新しいバージョンの新しい機能について、使用方法などの情報がチーム内で十分に共有できているか

以上を確認してから、アップグレードの作業に取り掛かってください。

## 実行環境のアップグレード
新しいAliceにアップグレードする場合、実行環境はLosettaを選択することを推奨します。
現在の実行環境がLosettaではない場合、[Hello,World#環境構築](https://docs.wsoft.ws/products/alice/tutorial/hello-world/#1)を参考にLosettaを導入してください。

もしLosettaをすでに導入している場合、以下のコマンドを実行してLosettaのバージョンを更新します。

```sh title="シェル"
$ alice update --upgrade
```

## ソースコードのアップグレード
稀にですが、新しいAliceのバージョンに破壊的変更が存在する場合、ソースコードの該当する箇所を新しいものに書き換える必要があります。
書き換えが必要な変更と変更方法は、[互換性に影響を与える変更点](../changelog/compatibility.md)を参照してください。
書き換えを行ったあとは、必ず動作テストを行なってください。
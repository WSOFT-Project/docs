---
title: AliceScript ADK
summary: AliceScript Assessment Development Kitは、AliceScriptのSDK(Software Development Kit)に相当するキットです。
date : 2021-12-25
---

AliceScript ADKは、AliceScriptを使った開発を始めるために必要な一連のライブラリとツールのセットです。AliceScript ADKには、次のコンポーネントが含まれています。

- AliceScript CLI(`alice`コマンド)
- AliceScriptのインタプリタ
- Alice.Runtime
- IceBuild

## 入手

AliceScriptADKは、WSOFTダウンロードセンターで配信しています。

[AliceScript ADKのダウンロード](../download.md)

## 使用方法

- **AliceScript CLI**は、通常のそれと同じようにコマンドラインから呼び出すことで使用できます。
- **AliceScriptのインタプリタ**と**Alice.Runtime**を開発中の.NETプロジェクトから参照することで、あなたのアプリケーションにAliceScriptの機能を組み込むことができます。詳しくは、[相互運用](../interop/index.md)のページをご覧ください。
- **IceBuild**を使用すると、自分でAlicePackageをビルドできます。詳しくは、[パッケージのビルド](../tutorial/build.md)をご覧ください。
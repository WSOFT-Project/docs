---
title: AliceScript ADK
summary: AliceScript Assessment Development Kitは、AliceScriptのSDK(Software Development Kit)に相当するキットです。
date : 2021-12-25
author : Taiseiue
author_url : https://github.com/taiseiue
---
## はじめに
AliceScript評価および開発キット(AliceScriptADK)には、AliceScriptのシステム、ライブラリ、パッケージや
その上で動作するアプリケーションやパフォーマンスをテストしたり、実際にAliceScriptの開発を体験するために必要なツールが含まれています。
詳しくは、AliceScriptホームページを参照してください。
https://alice.wsoft.ws

## AliceScriptADKには次のツールが含まれています

* AliceScriptインタプリタの実体であるAliceScript.dll
* AliceScriptを実行するためのコマンドラインインタフェースであるalice.exeとそれに付随するファイルおよびライブラリ
* AliceScriptで標準的な機能を実行するために必要な関数やオブジェクトを定義するAlice.Runtime.dll

## AliceScriptADKの使い方
Run.batをダブルクリックすると、初めからalice.txtに書き込まれているサンプルプログラムが起動します。

alice.txtを編集することでAliceScriptの開発を行うことができます。

(※alice.txtはMITライセンスです。自己責任で自由に改変等を行っていただいて構いません。)

## AliceScript/SisterADKは以下の環境で動作します
AliceScriptADKを使用する場合は.NETCore3.1がインストールされたx64、AMD64、ARM64、x86アーキテクチャを搭載したコンピュータ。

AliceSisterADKを使用する場合は.NETFrameworkがインストールされたx64、AMD64、x86アーキテクチャを搭載したWindowsコンピュータ。

ただし、Windows11/WindowsServer2022ではx86アーキテクチャはサポートされません。

[AliceScriptのダウンロード](./download)
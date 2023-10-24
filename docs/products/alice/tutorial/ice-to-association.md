---
title : AlicePackageの関連付け
summary : この記事では、Windows環境でAlicePackageファイル（*.ice）をダブルクリックで実行できるようにする方法を説明します。
---
### AlicePackageの問題点
AlicePackageは、プログラムであるのにダブルクリックするだけでは実行できず、`alice.exe`を呼び出さなければいけないという問題がありました。しかも、`alice.exe`は常に同じディレクトリに存在するとは限らず、私たちはその都度プログラムを移動する手間がありました。たとえば、従来AlicePackageを実行するには、次のようなコマンドを入力しました。

```cmd title="コマンドプロンプト"
alice -p <MyPackage.ice> --arg <args>
```

### AlicePackage関連付け支援ツール
AlicePackage関連付け支援ツールは、この問題を簡単に解決することに成功しました。Windowsでは、ファイルの関連付けという機能によって拡張子とそれで呼び出されるプログラムを関連付けることができます。このツールは以下のリンクからダウンロードできます。

[ ダウンロード](https://download.wsoft.ws/WS00143){: .btn .btn-primary .btn-lg .bi .bi-download }

### 使用法
このツール実行には管理者権限が必要です。コンピューター管理者が一度実行してしまえば他のユーザーでの実行は不要です。

!!!tip "alice.exeの配置場所"
    AlicePackage関連付け支援ツールは、事前にどこかのディレクトリに`alice.exe`が配置されていることを前提としています。[ダウンロードセンター](https://download.wsoft.ws/AliceScript)から必要なAliceScript実装をダウンロードし、他のユーザーでも使用する場合はそのユーザーでもアクセスできる場所（たとえば、`C:\Program Files`）などに保存してください。

ダブルクリックして実行した後、画面のガイドに従って操作すれば、ファイルを関連付けることができます。

```cmd title="RegistAliceCMD.exe"
AlicePackageファイル関連付け支援ツール
Copylight (c) 2022 WSOFT Allrights reserved.
ファイルの関連付けを登録するには、[R]キーを入力してください
ファイルの関連付けを解除するには、[U]キーを入力してください
>>R
AlicePackageファイル(.ice) の関連付けを登録します
まず、alice.exeのパスを指定してください
ファイルパス><alice.exeへのファイルパス>
```

関連付けを解除する場合は、`U`キーを押すことで解除できます。
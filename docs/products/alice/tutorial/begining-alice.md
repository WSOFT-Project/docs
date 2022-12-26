---
title: 初めてのAliceScript
summary: この記事では、AliceScriptの動作環境を構築し、お使いの任意のエディタとAliceScriptADKを使用してAliceScriptコンソールアプリケーションを作成して実行する方法を示します
date : 2021-12-25
---
### はじめに
AliceScriptは、軽量な.NETエコシステム上で動作するインタプリンタ型のプログラミング言語です。AliceScriptはC#やPythonをルーツとしているため、C、C#、JavaScript、Pyhton、PHPのプログラマーであればすぐに使いこなすことができます。
AliceScriptについて詳しく知るには、[AliceScriptのツアー](../welcome)を参照してください。

この記事では、まず最初にAliceScriptで開発を始めるために必要な作業を確認します。(すでにAliceScriptを使用している場合はこのセクションを飛ばしても構いません)。
次に、AliceScriptを使って簡単なコンソールアプリケーションを例として作成し、AliceScriptの基本的な事項を解説します。

### 動作環境の構築
AliceScriptを使用したアプリケーションの開発についての説明の前に、まず、AliceScriptを実行できるコンピュータを用意する必要があります。AliceScriptが導入されている環境とは、AliceScript.dllか、AliceSister、Losettaがインストールされている環境のことです。

#### Windows環境にLosettaを導入する
初めに、Losettaをダウンロードする必要があります。[GitHubリポジトリ](https://github.com/WSOFT-Project/Losetta/releases)から、最新のものをダウンロードするか、[WSOFTダウンロードセンター](https://download.wsoft.ws/AliceScript)から安定板をダウンロードできます。

どちらの場合でも、`alice-win-xxx.exe`といったファイルがあるかと思います。自身のコンピュータに合った形式のものを`alice.exe`に名前変更します。

!!!note "サポートされるプラットフォーム"
    Losettaは、次のプラットフォームをサポートします。
    
    * Windows 32ビット、64ビット、ARM、ARM64
    * Linux 64ビット、ARM、ARM64
    * macOS 64ビット

名称変更したらそのファイルを適当な場所に移動します。このとき、移動先のファイルパスを控えておきます。

[チュートリアル:AlicePackageの関連付け](./ice-to-association.md)を参考に、AlicePackageをコンピュータに関連付けます。これで環境構築は完了です。

#### LinuxとmacOS環境にLosettaを導入する
この場合も初めに、Losettaをダウンロードする必要があります。`curl`コマンドを使って必要なファイルを導入できます。

```bash title="シェル"
curl -OL https://download.wsoft.ws/<Download_ID>/Download
```

この時のダウンロードIDは、環境に応じて次のように変化します。

|ID|環境|
|---|---|
|WS144|Linux-x64|
|WS145|Linux-arm|
|WS146|Linux-arm64|
|WS147|macOS-x64|

例えば、64ビット環境のLinuxにLosettaを導入するには、次のようなコマンドを実行します。

```bash title="シェル"
curl -OL https://download.wsoft.ws/WS144/Download
```

次に以下のコマンドを順に実行します。実効には管理者権限が必要です。

```bash title="シェル"
sudo chmod +x Download
sudo mv Download /bin/alice
```
これで環境構築は完了です。


### 初めてのAliceScriptの実行
`alice`コマンドを実行して、対話実行モードに入ります。次に、以下のようなコマンドを入力します。

```cs title="AliceScript"
print("Hello,World!");
```

```raw title="出力"
Hello,World!
```

### スクリプトの作成と実行
`script.txt`という名前のテキストファイルを作成し、そこに先ほどのように`print("Hello,World!");`と書き込んで保存します。

次のようなコマンドを実行して、スクリプトファイルを実行できます。

```bash title="シェル"
alice -r script.txt
```

以上で基礎的なチュートリアルは終了です。
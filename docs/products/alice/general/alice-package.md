---
title: AlicePackage
summary: この記事では、AlicePackageの仕様について説明します
date : 2021-12-25
---
AlicePackageは、プログラムのスクリプト、リソース、ライブラリやパッケージを含むAliceModelで実行できるアプリパッケージ形式です。

AlicePackageファイルはそのマジックナンバー「ICE」（16進表現で`49 43 45`とパッケージタイプを表す1バイトで識別できます。

AlicePackageを作成する方法について知るには、[パッケージのビルド](/build)を参照してください。

## はじめに

AlicePackageは、AliceScriptで書かれたプログラムとリソース、ライブラリや他のパッケージをひとつにまとめたアプリケーションの形式です。

## ファイル構造
AlicePackageのファイルフォーマットを以下に示します。

|長さ|内容|
|---|---|
|4|マジックナンバー|
|1|ファイルスイッチ|
|3|予備領域|
|6|制御コード|
|32|解凍用データ |
|↓|パッケージコンテンツ

## ファイルスイッチ
ファイルスイッチは、パッケージ前方にある8ビット(1バイト)の領域です。それぞれのビットには、パッケージの性質を表すフラグが含まれます。

**ファイルスイッチ**

|インデックス|内容|
|---|---|
|1|署名済みパッケージの場合1|
|2|(未使用)|
|3|(未使用)|
|4|(未使用)|
|5|(未使用)|
|6|(未使用)|
|7|(未使用)|
|8|(未使用)|

## 制御コード
AlicePackageのヘッダーに含まれる16バイトの領域は制御コードと呼ばれ、この領域を直接[AliceModel](../saim)が使用することはありません。しかし、[AliceModel](../saim)を実装するそれぞれのインタプリタによって使用される場合があります。この領域の標準的な使用方法はどの[AliceModel](../saim)の実装を使用しているかを識別するのに使用されます。

## 署名
AlicePackageにデジタル署名を添付することで、そのパッケージファイルが改竄されておらず、正しい提供元から提供されていることを確認できます。署名されたAlicePackageは、未書名のパッケージファイルに比べて実行されるまで時間がかかります。署名済みAlicePackageのファイルスイッチには1が立ちます。

署名するAlicePackageには、パッケージコンテナーの最上部に`certificate.pfx`ファイルを(このままの名前で)配置する必要があります。PFXファイルは、パッケージの検証に必要な証明書を表すファイルです。署名の検証はパッケージマニフェストファイルが読み込まれる前に読み込まれます。

## パッケージマニフェストファイル
すべてのパッケージは、パッケージコンテナーの最上部に`manifest.xml`ファイルを（このままの名前で）配置する必要があります。パッケージマニフェストファイルは、パッケージに関する情報をビルドツールやAlice.Interpreterに説明するものです。まずは次の例を参照してください。

```xml title="manifest.xml"
<?xml version="1.0" encoding="utf-8"?>
  <package>
    <name>Hello,Package</name>
    <version>1.0</version>
    <publisher>WSOFT</publisher>
    <description>Hello,World!とだけ表示します</description>
    <script>
     print("Hello,World!");
    </script>
    <target>any</target>
 </package>
```

パッケージマニフェストファイルは、XML形式で、少なくとも次の情報を記述する必要があります。

#### Name属性

Name属性は、このパッケージの名前を表します。

#### Script属性

Script属性は、このパッケージのエントリポイントを表します。このパッケージが読み込まれたとき、AliceScriptインタプリタはエントリポイントに記述された内容を順番に実行します。
Script属性の指定には、インラインスクリプトを使用する方法と、有効なスクリプトへのリンクを使う方法の二通りがあります。たとえば、別のスクリプトファイルである`main.alice`をエントリポイントとして使用するには、次のように指定します。

- **ファイルを指定する例**

```xml title="manifest.xml"
<?xml version="1.0" encoding="utf-8"?>
<package>
    <name>Hello,Package</name>
    <script path="main.alice" />
</package>
```

インラインスクリプトは次のような形式になります。

- **インラインスクリプトを指定する例**

```xml title="manifest.xml"
<?xml version="1.0" encoding="utf-8"?>
<package>
    <name>Hello,Package</name>
    <script>
      print("Hello,World!");
    </script>
</package>
```

## アプリケーション内のリソースにアクセスする
パッケージ内のコードからAlicePackageに含めたファイルを読み込むには、[file_read_text](../api/alice/io/file_read_text.md)関数または[file_read_data](../api/alice/io/file_read_data.md)関数を使用します。この関数の詳しい説明はそれぞれの記事をご覧ください。

ここでは、例としてパッケージ内に存在する.NETのアセンブリを読み込むコードを次に示します。

```cs title="AliceScript"
using Alice.IO;
using Alice.Interop;

// 読み込むライブラリのファイル名
const LIBRARY_PATH = "myAssembly.dll";

// パッケージ内のファイルをデータ形式で読み込む
var asm = file_read_data(LIBRARY_PATH, true);

// 読み込んだファイルをライブラリとして読み込む
interop_loadLibrary(asm);
```

## 作成したライブラリを読み込む
すでにAlicePackage形式で作成されているライブラリを読み込むには、[import](../api/alice/import.md)関数を使用します。

> [!WARNING]
> ライブラリ内で定義されている名前空間へのアクセスは、必ず読み込んだ後にしてください。import関数によって読み込まれる前にusingステートメントなどで名前空間にアクセスしようとすると、エラーが発生します。

次に、ライブラリを読み込んでその中の関数を使用する例を示します。

```cs title="AliceScript"
import("MyLibrary.ice");

using MyLibrary;

Func();
```

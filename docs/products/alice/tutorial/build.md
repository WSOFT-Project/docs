---
title: パッケージのビルド
summary: この記事では、AlicePackageをビルドする方法について説明します
date : 2021-12-25
---
あなたが作成したスクリプトをAlicePackage形式のアプリケーションとして展開するには、AlicePackage形式にビルドする必要があります。 AlicePackageは、さまざまなスクリプトやリソース、パッケージ、ライブラリをまとめた書庫と考えることができます。詳しく知るには[AlicePackageの記事](../alice-package)を参照してください。パッケージをビルドするには、次の方法のいずれかを取ることができます。

* IceBuildを使用する
* ビルドスクリプトを一から作成する
  
この記事では、まず初めに簡単にパッケージをビルドすることができるツールである、IceBuildを使用する方法を解説し、次にビルドスクリプトを一から作成してビルドする方法について触れます。

### IceBuild
AlicePackage Build Environmentは、[AlicePackage](../alice-package)形式のアプリケーションをビルドするためのプラットフォームです。IceBuildとも呼ばれるこのエンジンは、パッケージを処理およびビルドする方法を制御する方法を提供します。 ディレクトリに対して`icebuild.ice`を実行するとAlicePackageを簡単に出力できます。 IceBuildは、[AliceScriptのダウンロードの記事](../download)からダウンロードできます。

IceBuildは、ビルドする前にパッケージマニフェストファイルを確認し、適切なエントリポイントが指定されているか、埋め込まれたリソースファイルが存在するかなどの基本的な事項を確認した後パッケージのビルドを開始します。ビルドスクリプトの使用が特に必要な場合を除いて、基本的にAlicePackageのビルドにはIceBuildを使用することを推奨します。

#### コマンドラインから使用する
IceBuildを使用するには、適切なコマンドライン引数とともに、適切なディレクトリ名をicebuild.iceに渡します。例えば、ディレクトリTestPkgからTestPkg.iceをビルドするには、次のコマンドを使用します。

```shell title="コマンドライン"
icebuild.ice TestPkg -out:TestPkg.ice
```
IceBuildのコマンドライン引数について詳しく知るにはIceBuildコマンドラインリファレンスを参照してください。

.iceファイルをコマンドプロンプトから実行できるようにするには、チュートリアル:iceファイルの関連付けを参照してください。
#### AliceScriptから使用する
AliceScriptからIceBuildを呼び出すこともできます。この方法を使用して、IceBuildの安定性とビルドスクリプトを一から実行することのメリットを同時に享受することができます。この方法を使用するときは、例えば次の状況が考えられます。

* パッケージ化する前に、ファイルまたはディレクトリに前処理することを希望している
* ビルドが成功したとき、出力されたパッケージを別の場所にコピーすることを希望している
* ビルド後に後処理を実行することを希望している

次の例は、AliceScriptでIceBuildを呼び出すサンプルです。

```js title="main.alice"
import "icebuild.ice”;
using WSOFT.AliceScript.IceBuild;

//ソースディレクトリへのパス
const SourcePath = "{ソースディレクトリへのパス}”;
//出力先ファイルのパス
const TargetPath = "{出力先ファイルのパス}”;

//希望する場合はここに前処理を記述

//ビルド実行
var result = IceBuild.BuildPackage(SourcePath,TargetPath);

if(result.Success)
 {
    //ビルド成功
    //希望する場合はビルド成功時の後処理を記述
    print("パッケージのビルドが成功しました”);
 }
else
 {
    //ビルド失敗
    //希望する場合はビルド失敗時の後処理を記述
    print("パッケージのビルドが失敗しました”);
    for(var i=0;i<result.Errors.Length;++i)
     {
        print("エラー {0}/{1} :{2}”,i,result.Errors.Length,result.Errors[i]);
     }
 }
 //希望する場合はビルド完了時の後処理を記述
 print("パッケージのビルドが完了しました”);
```
### ビルドスクリプトを一から作成する
また、Alice.Packaging名前空間にあるクラスを使用して自分で一からパッケージをビルドするスクリプトを作成することもできます。

ディレクトリをAlicePackage形式にビルドする手順は、主に次の通りです。

1. `manifest.xml`を含むビルド対象のディレクトリをZip形式で圧縮する
2. 1のファイルをAlicePackage形式に変換する

このままでもAlicePackage形式として実行可能ですが、できる限りパッケージ化前に少なくともパッケージマニフェストファイルの簡易チェックをしてください。ユーザーおよび開発者はAlicePackageに正しい内容のパッケージマニフェストファイルが含まれていることを期待しますし、実際にそのようなプログラムが流行することはAliceエコシステムの健全な成長を妨げかねません。 次の例はビルドスクリプトの一例です。

```js title="build.alice"
import "Alice.IO”;
import "Alice.Packaging”;

const SourcePath = "{ソースディレクトリのパス}”;
const TargetPath = "{出力ファイルのパス}”;
　
//パッケージマニフェストファイルのパス 
var manifestPath = Path_Combine(SourcePath,”manifest.xml”);

//ソースディレクトリとパッケージマニフェストファイルの存在を確認
if(!(Directory_exists(SourcePath) && File_Exists(manifestPath)))
  {
     throw("エラー:ソースディレクトリが存在しないか、パッケージマニフェストファイルが存在しません”);
     return;
  }
//パッケージマニフェストファイルの簡易チェック
if(Package_GetManifestFromFile(manifestPath) == null)
  {
     throw("エラー:パッケージマニフェストファイルが不正な形式です”);
     return;
  }

//Zipファイルの出力に使用する一時的なファイルパス
var tempPath = Path_GetTempFileName(true);

print("圧縮: {0} -> {1}”,SourcePath,tempPath);
//ソースディレクトリをZip形式で圧縮
Zip_CreateFromDirectory(SourcePath,tempPath);

print("変換: {0} -> {1}”,tempPath,TargetPath);
//圧縮したZipファイルからAlicePackageファイルを生成
Package_CreateFromZipFile(tempPath,TargetPath);

print("パッケージのビルドが成功しました”);
```
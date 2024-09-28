---
title: IceBuild
summary: AlicePackageをビルドするために必要な、IceBuildコマンドの使用方法を説明します。
date: 2024-07-22
---

## インストール

```sh title="シェル"
alice install https://alice.wsoft.ws/icebuild.ice icebuild
```

## 使い方

```sh title="シェル"
alice icebuild --args <ディレクトリ名> (オプション)
```

省略形|オプション|説明
-----|--------|----
`we`|`warn-as-error`|警告をエラーとして扱います
`nl`|`nologo`|ビルド時にロゴを表示しません
`s`|`silent`|ビルド時にエラーのみを表示し、ログや警告を表示しません
`out`|`target`|ビルド結果の出力先を指定します
`c`|`control`|指定したファイルを制御コードとして埋め込みます

## 使用例
次の例では、現在のディレクトリをビルドしてAlicePackageを作成します。

```sh title=""
$ alice ibebuild .
```

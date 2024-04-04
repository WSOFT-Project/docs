# WSOFTDocs
![WSOFTDocs](./docs/media/WSOFT-Docs.svg)

[WSOFT Docs](https://docs.wsoft.ws/)へようこそ。このREADMEを確認して、WSOFTDocsにどのように貢献できるかをご理解ください。

## 実行方法
WSOFTDocsは、https://docs.wsoft.ws/ で閲覧できます。


### ビルド方法
WSOFTDocsをビルドするには以下のパッケージが必要です。

- Python3
- mkdocs
- [Lantana](https://github.com/WSOFT-Project/lantana)

このうち、Python3以外はビルドスクリプトによってインストールおよびアップデートされます。

WSOFTDocsをローカル環境でビルドするには、`build.sh`または`build.bat`を実行します。

x64環境以外でビルドするには、ビルドスクリプトの修正が必要です。
それぞれのスクリプト内の、`CEI_FILE_NAME`変数の値を以下のように修正してください。

|実行環境|変数の値|
|---|---|
|Linux x64(規定)|`cei-linux-x64`|
|Linux Arm64|`cei-linux-arm64`|
|Windows x64(規定)|`cei-win-x64`|
|Windows x86|`cei-win-x86`|
|macOS AppleSilicon|`cei-osx-arm64`|
|macOS x64|`cei-osx-x64`|

### 依存関係
WSOFTDocsは以下のプロジェクトを使用しており、実行の際に必要です。

- [Lantana](https://github.com/WSOFT-Project/lantana)

LantanaはPyPIでインストールできます。実行にはPython3が必要です。

```shell
pip install lantana
```

## 入門
オープンソースへの貢献は、単にコンテンツの更新を提供するだけでなく、問題が発生したときに共有することでもあります。次のセクションを確認して、次のいずれの方法が適切か判断してください。

### 問題の報告と機能強化の提案
問題や提案を送信するには、該当する記事に対してIssueを作成してください。

### GitHubでの編集
記事のメニュー上部にある「編集」ボタンをクリックして、記事を直接編集してください。

## 編集の流れ 
### 前提条件
WSOFTDocsの編集にご協力いただきありがとうございます。記事を編集するには、GitHubアカウントが必要です。アカウントをお持ちでない場合は、作成してください。
### 編集
WSOFTDocsの全ての記事は、マークダウンファイル(\*.md)で記述されています。編集したい記事を開いて、編集ボタンをクリックします。
### プルリクエスト
編集を保存するには、変更を提案します。 *Create a new branch for this commit and start a pull request. Learn more about pull requests.* が選択されていることを確認して、変更を提案します。これであなたの作業は完了です。
### 編集のレビュー
編集は、レビュワーによって確認され、問題なければそのまま *main* ブランチに反映されます。これにより、晴れてWSOFTDocsに編集が反映されます。

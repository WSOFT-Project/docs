---
title: Hello,World
summary: この記事では、LinuxまたはmacOSを使用している方向けに、AliceScriptの環境を構築して初めてのプログラムを作成し、実行します。
date : 2024-07-11
---

## はじめに

この記事では、LinuxまたはmacOSに、AliceScriptの環境を構築して初めてのプログラムを作成する方法を説明します。Windowsを使用している場合は、[初めてのAliceScript](./begining-alice.md)をご覧ください。

このチュートリアルは、以下の5つのステップに分かれています。

1. 環境構築
2. 確認
3. プログラムの作成
4. プログラムの実行
5. プログラムの編集

#### このチュートリアルでできるようになること

- AliceScriptの実行環境を構築できる
- AliceScriptで簡単なプログラムを作成できるようになる

#### 必要なもの

- ターミナルが使用できるLinuxまたはmacOSコンピューター
- 100MB以上の空き容量

#### かかる時間

- 10分 + ダウンロード/インストールにかかる時間

## 1. 環境構築
ターミナルを開いて、次のコマンドを実行します。

```sh title="シェル"
curl -fsSL https://alice.wsoft.ws/install.sh | sh
```

このコマンドは、はじめに環境に応じたAliceScriptのランタイムをお使いのコンピューターの`/usr/local/bin`ディレクトリにダウンロードします。
次に、ランタイムをダウンロードしたディレクトリ直下に`.alice`ディレクトリを作成し、スクリプトを書き込みます。

??? "ターミナルの開き方"
    Macの場合、Launchpadを開き「ユーティリティ」フォルダー内の「ターミナル」をクリックします。
    Ubuntuの場合は、Dock内の「端末」または「Terminal」をクリックします。

> [!WARNING] エラーが発生した場合
> 「*Permission denied*」と表示されエラー発生している場合は、特権を使ってインストールする必要があります。以下のコマンドに変えてもう一度試してください。
>
> `curl -fsSL https://alice.wsoft.ws/install.sh | sudo sh`

## 2. 確認

コマンドを実行できたら、次のコマンドを実行して正しくインストールできていることを確認します。

```sh title="シェル"
alice version
```

正常にインストールできている場合、次のように表示されます。

```sh title="シェル"
AliceScript Version x.x (Losetta v0.x.x.x on xxx-xxx)
```

問題がなければ、次のステップに進みます。

> [!WARNING] エラーが発生した場合
> 「**`alice`はコマンドとして認識されていません**」または、*「command not found*」と表示されている場合は、新しくターミナルを開き直してください。
> 再起動しても治らない場合は、「環境構築」からやり直してください。

## 3. プログラムを作成する

次のコマンドを使用して、Hello,Worldを表示するスクリプトファイルを作成します。

```sh title="シェル"
echo 'print("Hello,World!");' > hello_world
```

## 4. プログラムを実行する

今作成したプログラムを実行するには、次のコマンドを実行します。

```sh title="シェル"
alice hello_world
```

次のように表示されれば成功です。

```sh title="シェル"
Hello,World!
```

おめでとうございます。AliceScriptのプログラムを作成して実行できました.

> [!WARNING] エラーが発生した場合
> 「**ファイルが存在しません**」と表示されている場合、コマンドにタイプミスがなかったかを確認してください。「プログラムを作成する」からやり直してください。

## 5. プログラムを編集する

今作成した`hello_world`ファイルを任意のエディターで編集します。この例では、`nano`を使用しますが、`vim`でもVisual Studio Codeでも構いません。

```sh title="シェル"
nano hello_world
```

ファイルを開いたら、末尾に以下の内容を追記します。

```cs title="AliceScript"
print("Hello,World!");
//ここから追記
print("Hello," + read());
```

ファイルを保存し、もう一度以下のコマンドを実行します。

```sh title="シェル"
alice hello_world
```

成功すると、Hello,World!と表示された後に入力を求められます。入力に応じて、`Hello,<入力>`と表示されます。

```sh title="シェル"
Hello,World!
Taro
Hello,Taro
```

以上で、このチュートリアルの作業は完了です。

## まとめ

おめでとうございます。AliceScriptでプログラムを作成して、実行できました。

AliceScriptでどんなプログラムを作成するときも、基本的な手順はこのガイド同じです。必要に応じてこのチュートリアルに戻ってきてください。

### 次はこちら
AliceScriptには、まだまだ説明できることがたくさんあります。
以下のページから、興味のある記事をぜひご覧ください。

- [AliceScript: チュートリアル](./index.md)
- [AliceScript: 基本](../general/index.md)
- [AliceScript: APIブラウザー](../api/index.md)

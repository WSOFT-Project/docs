---
title : Losetta0.9.16に更新した後のエラーを直す
summary : Losettaを0.9.16に更新した後、「エラー0x004 変数:[global]は定義されていないか、存在しません」といわれる解決策を説明します。
date : 2023-01-20
order : 8
---

### 読者前提
- 標準機能を使ってLosetta 0.9.15から0.9.16以降に更新した方
  
### 更新（更新済みの方はスキップ）
通常の更新コマンドを使って更新する。

```sh title="シェル"
alice update
```

Linuxの場合は忘れずに権限を付与しておく

```sh title="シェル"
sudo chmod +x /usr/local/bin/alice
```

### 問題
更新後、普通にREPLを起動すると次のエラーが表示されて`Alice.Shell`が使用できない。

```txt title="alice"
エラー0x004: 変数:[global]は定義されていないか、存在しません 0行  ファイル名:/usr/local/bin/.alice/shell
AliceScript Version 2.1 (Losetta v0.9.16.0 on Linux-x64)
Copyright (c) WSOFT. All Rights Reserved.
```

### 原因
Losetta 0.9.16で`global`キーワードを`public`キーワードに変更する破壊的変更を行ったから。詳しくは[リリースノート](https://github.com/WSOFT-Project/Losetta/releases/tag/0.9.16)参照。

### 対応策
REPL用のスクリプトを再生成する。

```sh title="シェル"
sudo alice -s Alice.Shell.Init
```

---
title : Raspberry Pi初代やZeroでAliceScriptを実行する
summary : 初代ラズパイやZeroなどのarmv6CPU環境でAliceScriptを実行する方法についてメモします。
date : 2023-03-05
order : 10
---

### 読者前提
- Raspberry Pi初代やZeroなどのarmv6CPUでAliceScriptを動かそうとしている
- Raspberry PiOS(Raspbian)
  
`armv6`CPUの環境では、Linux-ARM環境用Losettaは動作しません。これは、.NETが`armv6`をサポートしないからです。

しかし、[Mono](https://www.mono-project.com/)は`armv6`をサポートしているので、今回はこれを使用してAliceScriptを実行します。

### ソフト導入
Monoを導入します。

```txt title="シェル"
sudo apt-get install mono-complete
```

初代ラズパイ環境だとMonoの導入にしばらくかかりました。

### AliceScriptのインストール
[ダウンロードセンター](https://download.wsoft.ws/AliceScript)から最新のAliceScriptADKのダウンロード番号を確認します。

この記事では、AliceScript2.2.1(ダウンロード番号WS178)を使います。

```txt title="シェル"
curl -OL https://download.wsoft.ws/WS178/Download
unzip Download -d alice
```

### 実行
これで実行できるようになりました。

```txt title="シェル"
cd alice
mono alice.exe
```
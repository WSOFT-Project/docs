---
title : GP2040-CEを自分でカスタマイズしてビルドする話
summary: この記事では、自分がGP2040-CEをビルドするまでの手順を残しておこうと思います。
date : 2024-07-01
order : 18
---

友人が去年くらいからずっと言っていたアーケードコントローラー(アケコン)について。
自分の手に馴染むHITBoxみたいなアケコンを作ってみたいと前から言ってて、ワクワクでJLCPCBで基盤を発注する矢先、
なんかどうも配線をミスったらしく、スタートボタンを別のGPIOピンに移せないかと相談されました。多分ファームウェアを修正してビルドすればいけそう。そんなこんなで今日は、GP2040-CEをカスタムビルドしました。

ちなみに作っていたアケコンはこんな感じ。かっこいいね。

![問題のアケコン](./media/IMG_6089.png)

GP2040-CEですが、どうやらRP2040系のマイコンでゲームコントローラーを作るためのOSSのファームウェアみたいです。

- [GP2040-CE](https://gp2040-ce.info/)

今回はバージョン`0.7.9`を使いました。

今回の本題のカスタムビルドについて、詳細なやり方は*あん*さんがまとめてくださっているので、こちらの方が参考になります。この記事では自分がやったことを淡々と書きます。

- [GP2040_CEビルド環境構築手順.pdf](https://drive.google.com/file/d/1G8ytmH70aumiljWFLk4SzniRSwA6DNNk/view)

### 環境

当方の環境です。これ以外でも導入するやつを変えれば多分動くと思いますが、参考までに。

- Windowsパソコン(x86_64)
- [WaveShare RP2040-Zero](https://www.switch-science.com/products/7886)

### 環境構築

インストールするものは以下の3つです。`*`がついているものについては、当方の環境ではすでに導入していたので細かく説明しません。

- [Arm GNU Toolchain](https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads)
- [CMake](https://cmake.org/download/)
- Visual Studio*
- Python*
- Git*

Arm GNU Toolchainについては、Windows環境なら`arm-gnu-toolchain-XX.X.rel1-mingw-w64-i686-arm-none-eabi.exe`みたいな形のファイルをダウンロードして、インストーラーをぽちぽち進めればOK。これは`Program Files (x86)`内にインストールされているはずなので、`C:\Program Files (x86)\Arm GNU Toolchain arm-none-eabi\<バージョン>\bin`までを控えておきます。

CMakeは自分の環境に合ったものをインストールでOK。ただし、ユーザーかコンピューターにPATHを通しておくことを忘れないこと。

### リポジトリのクローン

好きな作業ディレクトリを作成してコマンドプロンプト(今はWindowsターミナル)で開きます。以下の例では`gp2040-ce-custom`としました。

```txt title="コマンドプロンプト"
mkdir gp2040-ce-custom
cd gp2040-ce-custom

git clone https://github.com/OpenStickCommunity/GP2040-CE.git
cd GP2040-CE
git submodule update --init

mkdir build
cd build
git clone https://github.com/raspberrypi/pico-sdk.git
cd pico-sdk
git submodule update --init
```

### 設定の変更

ここまで書けたら自作基板用のボード設定に変更します。
と言ってもGPIOピンを変えるだけなので簡単。

作業ディレクトリ内の`GP2040-CE\config`をエクスプローラーなどで開きます。

今回は、`WaveShare RP2040-Zero`をベースにしているので、`WaveShare`ディレクトリの`BoardConfig.h`を編集します。

今回はGPIOの使用ピンを0->27、1->28にしたいので、GPIOとボタンの対応部分を書き換えます。

**書き換え前**

```c title="BoardConfig.h"
// (略)
#define GPIO_PIN_00 GpioAction::BUTTON_PRESS_S1     // S1     | Back   | Minus   | Select   | 9      | Coin   |
#define GPIO_PIN_01 GpioAction::BUTTON_PRESS_S2     // S2     | Start  | Plus    | Start    | 10     | Start  |
// (略)
```

**書き換え後**

```c title="BoardConfig.h"
// (略)
#define GPIO_PIN_27 GpioAction::BUTTON_PRESS_S1     // S1     | Back   | Minus   | Select   | 9      | Coin   |
#define GPIO_PIN_28 GpioAction::BUTTON_PRESS_S2     // S2     | Start  | Plus    | Start    | 10     | Start  |
// (略)
```

今回はしませんでしたが、もしファームレベルで他のボタンをボタンをリマップしたり、無効化したりするならここでできるそう。

### ビルド

ここまできたら、あとはビルドするだけ。
作業ディレクトリでコマンドプロンプトを開きます。

```txt title="コマンドプロンプト"
cd GP2040-CE\build

set PICO_SDK_PATH=pico-sdk
set PICO_TOOLCHAIN_PATH=インストール時に控えておいたパス
set GP2040_BOARDCONFIG=WaveShare

cmake -G "NMake Makefiles" ..
nmake
```

上手くいったら、`GP2040-CE\build`の中に`*.uf2`みたいなファイルができています。これでビルドは完了。

### 書き込み

最後にファームウェアを書き込み作業完了です。

すでに何かのファームを書いてしまっている時は、一度リセットファームを書いて起動しないといけないみたい。ここでハマりました。
反対に初めてマイコンにファームを書く場合は飛ばしてOK。
リセットファームは以下のリンクからダウンロードできます。

https://datasheets.raspberrypi.com/soft/flash_nuke.uf2

リセットファームを書き込んで一度起動したら、続いて**ビルド**で作成したファームウェアを書き込みます。

### まとめ
結構簡単にカスタムビルドできるみたいですね。
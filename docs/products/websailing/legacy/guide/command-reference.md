---
title : WebSailingNXターミナルリファレンス
summary : この記事では、WebSailingNXに搭載されていたWebSailingターミナルで使用できるコマンドについて説明します。
date : 2019-7-11
---

WebSailingNXには、WebSailingの機能を補助するためにWebSailingターミナルが実装されています。ユーザーは、このプロンプトを使用して高度な設定変更を行うなど様々な機能を使用できます。
ンが終了します。

### コマンドの一覧

#### `echo`コマンド
引数に指定したテキストを表示します。

```txt title="コマンド"
echo <表示内容>
```

#### `cls`コマンド
画面をクリアします。

#### `execbrows`コマンド
コマンドをブラウザで実行します。

```txt title="コマンド"
execbrows <コマンド>
```

#### `go`コマンド
引数に指定したUrlに移動します。

```txt title="コマンド"
go <Url>
```

#### `cd`コマンド
プロンプトのカレントディレクトリを変更します。

```txt title="コマンド"
cd <ディレクトリ>
```

#### `write`コマンド
ファイルを書き込みます。

```txt title="コマンド"
write <ファイル名> <内容>
```

#### `copy`コマンド
引数に指定したファイルをもう一方に指定した場所へコピーします。

```txt title="コマンド"
copy <コピー元> <コピー先>
```

#### `move`コマンド
引数に指定したファイルをもう一方に指定した場所へ移動します。

```txt title="コマンド"
copy <移動元> <移動先>
```

#### `panic`コマンド
エラーを発生させます。

```txt title="コマンド"
panic
```

#### `delete`コマンド
引数に指定したファイルを削除します。

```txt title="コマンド"
delete <対象ファイル>
```

#### `exit`コマンド
シェルを閉じます。

```txt title="コマンド"
exit
```

#### `ls`コマンド
現在のディレクトリ内のファイルを列挙します。

```txt title="コマンド"
ls
```

#### `cat`コマンド
指定したファイルの内容を表示します。

```txt title="コマンド"
cat <ファイル名>
```

##### `/b`オプション
指定したファイルの内容を読み込み、16進形式で表示します。

```txt title="コマンド"
cat <ファイル名> /b
```

##### `/b /t`オプション
指定したファイルの内容をUTF-8で読み込み、表示します。

```txt title="コマンド"
cat <ファイル名> /b /t
```

#### `wsdedit`コマンド
WebSailingWSDエディタを起動します。

```txt title="コマンド"
wsdedit
```

#### `wsconf`コマンド
WebSailing設定エディタを起動します。

```txt title="コマンド"
wsconf
```

#### `var`コマンド
変数を定義したり、確認したりします。変数は`%変数名%`の形式で指定できます。

##### `/d`オプション
現在定義されているすべての変数を列挙します。

```txt title="コマンド"
var /d
```

##### `a`オプション
指定した名前の変数を定義し、値を代入します。

```txt title="コマンド"
var /a HW Hello,World
```

#### `wspack`コマンド
WebSailingで使用できる様々な形式のファイルをパッケージ化したり、解凍したりします。

##### `/u`オプション
WebSailing拡張機能パッケージ(`*.wsm`)ファイルを指定した場合はそれを指定したディレクトリに解凍します。

```txt title="コマンド"
wspack /u Test.wsm Test
```

WebSailingパッケージ(`*.wspack`)ファイルを指定した場合はそれを指定したディレクトリに解凍します。

```txt title="コマンド"
wspack /u Test.wspack Test
```

WebSailingUpdateファイル(`*.wssw`)ファイルを指定した場合はそれに含まれる実行ファイルを指定したディレクトリへ抽出します。

```txt title="コマンド"
wspack /u Test.wssw Test
```

##### `/e`オプション
WebSailing拡張機能パッケージ(`*.wsm`)ファイルを指定した場合は指定したディレクトリから拡張機能パッケージを作成します。

```txt title="コマンド"
wspack /e Test Test.wsm
```

##### `/c`オプション
WebSailingUpdateファイル(`*.wssw`)ファイルをWebSailingパッケージ(`*.wspack`)ファイルへと変換します。

```txt title="コマンド"
wspack /c Test.wssw Test.wspack
```

#### `web`コマンド
##### `download`サブコマンド
ひとつ目の引数に指定したUrlのファイルをもう一方の引数に指定した場所に保存します。

```txt title="コマンド"
web download <Url> <ダウンロード先>
```

##### `view`サブコマンド
ひとつ目の引数に指定したUrlの内容を表示します。

```txt title="コマンド"
web view <Url>
```

#### `net`コマンド
##### `list interface`サブコマンド
現在使用可能なネットワークインターフェースの一覧を取得します。

```txt title="コマンド"
net list interface
```

##### `select interface`サブコマンド
現在使用可能なネットワークインターフェースの一覧からひとつを指定します。

```txt title="コマンド"
net select interface <番号>
```

##### `info`サブコマンド
WebSailingネットワークマネージャーを使って指定したインターフェースのネットワーク診断を実行します。

```txt title="コマンド"
net info
```

#### `clear`コマンド
WebSailingのキャッシュなど一時ファイルを削除します。`C:\WebSailing\UserData\temp`内に存在するファイルが対象になります。

#### `wswindow`コマンド
##### `restart`サブコマンド
WoWウィンドウシステムに存在するウィンドウをすべて閉じ、そのタブを再起動します。

```txt title="コマンド"
wswindow restart
```

##### `kill`サブコマンド
WoWウィンドウシステムに存在するウィンドウをすべて閉じ、そのタブを終了します。

```txt title="コマンド"
wswindow kill
```

### WSPluginを実行する
現在のディレクトリ内に`コマンド名+.dll`の拡張機能が存在していて、それに`Main`メソッドが実装されている場合、その拡張機能のコマンドを実行できます。
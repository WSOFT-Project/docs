---
title: include
summary: スクリプトファイルを読み込み、実行します。
date : 2021-11-09
author : Taiseiue
author_url : https://github.com/taiseiue
---
### 定義
名前空間:Alice / アセンブリ: AliceScript.dll / サポート: AliceScript1

属性: 関数の区切りの空白をサポート

nameに指定されたスクリプトファイルをすべて読み取り、それをスクリプトファイルとして現在のフローで実行し、その結果を返します。

```cs title="AliceScript"
namespace Alice;
variable include(string filename);
```

|引数| |
|-|-|
|`filename`| 読み込んで実行したいスクリプトファイルの名前|

|戻り値| |
|-|-|
|`variable`| スクリプトを実行した結果|

### 例
以下は、main.txtからinclude関数を使用してスクリプトファイルであるscript.txtを読み込む例です。

```cs title="script.txt"
print("Hello from script.txt");
```

```cs title="main.txt"
include("script.txt");//出力:Hello from script.txt
```

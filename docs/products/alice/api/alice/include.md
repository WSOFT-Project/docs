---
title: include
summary: スクリプトファイルを読み込み、実行します。
date : 2021-11-09
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Utils.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Alice.Core.Utils.cs)

#### include(string)

nameに指定されたスクリプトファイルをすべて読み取り、それをスクリプトファイルとして現在のフローで実行し、その結果を返します。

```cs title="AliceScript"
namespace Alice;
public variable include(string filename);
```

|引数| |
|-|-|
|`filename`| 読み込んで実行したいスクリプトファイルの名前|

|戻り値| |
|-|-|
|`variable`| スクリプトを実行した結果|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
以下は、main.txtからinclude関数を使用してスクリプトファイルであるscript.txtを読み込む例です。

```cs title="script.txt"
print("Hello from script.txt");
```

```cs title="main.txt"
include("script.txt");//出力:Hello from script.txt
```

---
title: path_get_randomFileName
summary: ユニークな名前を持つディレクトリまたはファイル名を返します。
date : 2024-05-01
mt_type: function
mt_title: path_get_randomFileName()
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### path_get_randomFileName()

ユニークな名前を持つディレクトリまたはファイル名を返します。

```cs title="AliceScript"
namespace Alice.IO;
public string path_get_randomFileName();
```

|戻り値| |
|-|-|
|`string`|ユニークな名前を持つディレクトリまたはファイル名|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 説明
この関数は、ランダムなディレクトリ名またはファイル名を出力しますが、ファイルは作成しません。

### 例
次の例では、ランダムなファイル名を表示しています。

```cs title="AliceScript"
using Alice.IO;

print(path_get_randomFileName());
```
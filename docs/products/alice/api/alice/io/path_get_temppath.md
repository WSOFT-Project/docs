---
title: path_get_tempPath
summary: このスクリプトを実行しているユーザーの一時ディレクトリへのパスを返します。
date : 2024-05-01
mt_type: function
mt_title: path_get_tempPath()
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### path_get_tempPath()

このスクリプトを実行しているユーザーの一時ディレクトリへのパスを返します。

```cs title="AliceScript"
namespace Alice.IO;
public string path_get_tempPath();
```

|戻り値| |
|-|-|
|`string`|このスクリプトを実行しているユーザーの一時ディレクトリへのパス|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 説明
この関数は、パスが存在することを確認したり、プロセスがアクセス許可を持っているかを確認したりしません。

この関数は、次の順番で環境変数を確認し、見つかった最初のパスを返します。

- Windowsの場合
  1. `%TMP%`で指定されたパス
  2. `%TEMP%`で指定されたパス
  3. `%USERPROFILE%`で指定されたパス
  4. Windowsディレクトリ
- Unixの場合
  1. `$TMPDIR`で指定されたパス
  2. `/tmp`パス

### 例
次の例では、一時ファイルを表示しています。

```cs title="AliceScript"
using Alice.IO;

print(path_get_tempPath());
```
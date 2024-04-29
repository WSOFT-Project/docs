---
title: import
summary: 指定されたファイル名のライブラリを読み込みます。
---
### 定義
名前空間:Alice / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数の区切りの空白をサポート

#### import(string,bool)

`filename`に有効なAlicePackageまたは.NETライブラリへのパスを指定して、ライブラリを読み込みます。

```cs title="AliceScript"
namespace Alice;
public void import(string filename, bool isNativeLibrary = false);
```

|引数| |
|-|-|
|`filename`| 読み込みたいライブラリのファイル名|
|`isNativeLibrary`|ネイティブライブラリのとして読み込む場合は`true`、AlicePackageを読み込む場合は`false`。規定値は`false`です。|

### 例
以下は、import関数を使用して`somelib.ice`を読み込む例です。

```cs title="AliceScript"
import("somelib.ice");
```

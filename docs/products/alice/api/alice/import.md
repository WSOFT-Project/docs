---
title: import
summary: 指定されたファイル名のライブラリを読み込みます。
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Utils.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Alice.Core.Utils.cs)

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

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
以下は、import関数を使用して`somelib.ice`を読み込む例です。

```cs title="AliceScript"
import("somelib.ice");
```

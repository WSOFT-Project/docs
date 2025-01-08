---
title: import
summary: 指定されたファイル名のライブラリを読み込みます。
mt_type: function
mt_overloads: 3
mt_title: import(string)
mt_summary: 指定されたAlicePackageを読み込みます。
mt_title: import(string,bool)
mt_summary: 現在のパッケージ内またはディレクトリから指定されたAlicePackageを読み込みます。
mt_title: import(string,bool,bool)
mt_summary: 現在のパッケージ内またはディレクトリから指定されたAlicePackageまたは.NETのライブラリを読み込みます。
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Utils.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Alice.Core.Utils.cs)

#### import(string)

指定されたAlicePackageを読み込みます。

```cs title="AliceScript"
namespace Alice;
public void import(string filename);
```

|引数| |
|-|-|
|`filename`| 読み込みたいライブラリのファイル名|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

#### import(string,bool)

現在のパッケージ内またはディレクトリから指定されたAlicePackageを読み込みます。

```cs title="AliceScript"
namespace Alice;
public void import(string filename, bool fromPackage);
```

|引数| |
|-|-|
|`filename`| 読み込みたいライブラリのファイル名|
|`fromPackage`|パッケージやライブラリを現在のパッケージから取得する場合は`true`、ファイルシステムから取得する場合は`false`|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

#### import(string,bool,bool)

現在のパッケージ内またはディレクトリから指定されたAlicePackageまたは.NETのライブラリを読み込みます。

```cs title="AliceScript"
namespace Alice;
public void import(string filename, bool fromPackage, bool isNativeLibrary);
```

|引数| |
|-|-|
|`filename`| 読み込みたいライブラリのファイル名|
|`fromPackage`|パッケージやライブラリを現在のパッケージから取得する場合は`true`、ファイルシステムから取得する場合は`false`|
|`isNativeLibrary`|ネイティブライブラリのとして読み込む場合は`true`、AlicePackageを読み込む場合は`false`。既定値は`false`です。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 説明
この関数は、AlicePackageまたはSAIMで読み込める形式のライブラリを読み込み、エントリポイントのスクリプトを実行します。

`fromPackage`を指定しない場合、ライブラリははじめに現在のスクリプトが実行されているパッケージから検索され、そこでパッケージが見つからなかった場合にファイルシステムから検索します。現在のスクリプトがパッケージ内で動作していない場合は、初めからファイルシステムから検索されます。

`isNativeLibrary`を指定しないか、`false`に指定した場合、この関数は読み込み可能なパッケージを読み込みます。この方法では、AlicePackageおよびパッケージに必要なファイルを含んだZipファイルを読み込めます。

名前空間の参照は、この関数でライブラリを読み込んだ後で行う必要があります。

### 例
次の例では、`library.ice`を読み込んで、`MyLibrary`名前空間への参照を行います。

```cs title="AliceScript"
import("library.ice");

using MyLibrary;
```

次の例では、現在のパッケージから`sublib.ice`を読み込んでいます。

```cs title="AliceScript"
import("sublib.ice", true);
```

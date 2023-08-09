---
title: env_impl_target
summary: SAIMのビルドターゲットOSを取得します。
date : 2023-08-09
---
### 定義
名前空間:Alice.Environment / アセンブリ : Losetta.Runtime.dll / サポート: Alice2.0

属性: 関数

[SAIM](../../../general/saim.md)のビルドターゲットOSを取得します。

```cs title="AliceScript"
namespace Alice.Environment;
string env_impl_target();
```

|戻り値| |
|-|-|
|`string`|[SAIM](../../../general/saim.md)のビルドターゲットOSを表す文字列。|

### 説明
この関数は、[SAIM](../../../general/saim.md)のビルドターゲットOSを取得します。

実行する環境がLosettaの場合、返す文字列は以下のいずれかです。

|戻り値|該当するビルド|
|-|-|
|`Windows`|x86、x86-64、ARM32、ARM64Windows向けのAOTビルド|
|`OSX`|macOS向けの単一ファイルビルド|
|`Linux`|x86-64、ARM32、ARM64Linux向けの単一ファイルビルド|
|`NET6.0`|dotNET-CLR上で共通で動作するビルド|

実行する環境がAliceScriptあるいはAliceSisterの場合、返す文字列は以下のいずれかです。

|戻り値|該当するビルド|
|-|-|
|`Windows`|x86、x86-64、ARM32、ARM64Windows向けのAOTビルド|
|`OSX`|macOS向けの単一ファイルビルド|
|`Linux`|x86-64、ARM32、ARM64Linux向けの単一ファイルビルド|
|`NETFramework`|dotNET-CLR上で共通で動作するビルド|

### 例
次の例では、[SAIM](../../../general/saim.md)のビルドターゲットOSを取得します。

```cs title="AliceScript"
using Alice.Environment;

print(env_impl_target());
```
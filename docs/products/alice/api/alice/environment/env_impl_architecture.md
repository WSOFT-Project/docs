---
title: env_impl_architecture
summary: SAIMのビルドターゲットアーキテクチャを取得します。
date : 2023-08-09
---
### 定義
名前空間:Alice.Environment / アセンブリ : Losetta.Runtime.dll / サポート: Alice2.0

属性: 関数

[SAIM](../../../general/saim.md)のビルドターゲットアーキテクチャを取得します。

```cs title="AliceScript"
namespace Alice.Environment;
string env_impl_architecture();
```

|戻り値| |
|-|-|
|`string`|[SAIM](../../../general/saim.md)のビルドターゲットアーキテクチャを表す文字列。|

### 説明
この関数は、[SAIM](../../../general/saim.md)のビルドターゲットアーキテクチャを取得します。

実行する環境がLosettaまたはAlice3.0以降のAliceScriptの場合、返す文字列は以下のいずれかです。

|戻り値|該当するビルド|
|-|-|
|`x64`|64ビット版WindowsへのAOTビルド、64ビット版Linux、macOSへの単一ファイルビルド|
|`x86`|32ビット版WindowsへのAOTビルド|
|`ARM32`|ARMアーキテクチャ向け32ビット版WindowsへのAOTビルド、ARMアーキテクチャ向け32ビット版Linuxへの単一ファイルビルド|
|`ARM64`|ARMアーキテクチャ向け64ビット版WindowsへのAOTビルド、ARMアーキテクチャ向け64ビット版Linuxへの単一ファイルビルド|
|`Debug`|デバッグ用のビルド|
|`Release`|dotNET-CLR上で共通で動作するビルド|

実行する環境がAliceScriptあるいはAliceSisterの場合、返す文字列は以下のいずれかです。

|戻り値|該当するビルド|
|-|-|
|`Debug`|デバッグ用のビルド|
|`Release`|dotNET-CLR上で共通で動作するビルド|

### 例
次の例では、[SAIM](../../../general/saim.md)のビルドターゲットアーキテクチャを取得します。

```cs title="AliceScript"
using Alice.Environment;

print(env_impl_architecture());
```
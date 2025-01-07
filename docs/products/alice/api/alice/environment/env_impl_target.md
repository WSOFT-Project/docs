---
title: env_impl_target
summary: SAIMのビルドターゲットOSを取得します。
date : 2023-08-09
mt_type: function
mt_title: env_impl_target()
---
### 定義
名前空間: Alice.Environment<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Environment.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Environment.cs)

#### env_impl_target()

[SAIM](../../../general/saim.md)のビルドターゲットOSを取得します。

```cs title="AliceScript"
namespace Alice.Environment;
public string env_impl_target();
```

|戻り値| |
|-|-|
|`string`|[SAIM](../../../general/saim.md)のビルドターゲットOSを表す文字列。|

???note "対応: Alice2.0以降"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.9、0.10、0.11|

### 説明
この関数は、[SAIM](../../../general/saim.md)のビルドターゲットOSを取得します。

実行する環境がLosettaまたはAlice3.0以降のAliceScriptの場合、返す文字列は以下のいずれかです。

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
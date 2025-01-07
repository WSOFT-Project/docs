---
title: env_os_platform
summary: このスクリプトを実行しているオペレーティングシステムの識別値を取得します。
mt_type: function
mt_title: env_os_platform()
---

### 定義
名前空間: Alice.Environment<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Environment.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Environment.cs)

#### env_os_platform()

このスクリプトを実行しているオペレーティングシステムの識別値を取得します。

```cs title="AliceScript"
namespace Alice.Environment;
public string env_os_platform();
```

|戻り値| |
|-|-|
|`string`|現在のオペレーティングシステムの識別子|

???note "対応: Alice2.0以降"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.9、0.10、0.11|

### 説明
この関数はこのスクリプトを実行しているオペレーティングシステムの識別子を返します。
この関数の戻り値は、次の表のいずれかです。

|戻り値|説明|
|---|---|
|MacOSX|オペレーティング システムは Macintosh です。この値はSilverlight上の`AliceSister`でのみ返されます。それ以外の環境では`Unix`と返されます。|
|Other|その他のオペレーティングシステムです。これにはWebAssemblyが含まれています。|
|Unix|オペレーティングシステムはUnixです。AliceScriptとLosettaでは、macOSも含みます。|
|Win32NT|オペレーティングシステムはWindowsNTです。|
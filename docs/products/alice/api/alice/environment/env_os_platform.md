---
title: env_os_platform
summary: 現在のオペレーティングシステムの識別値を取得します。
---
### 定義
名前空間:Alice.Environment<br/>
アセンブリ : Losetta.Runtime.dll<br/>
実装 : [Alice.Environment.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Environment.cs)

#### env_os_platform()

現在のオペレーティングシステムの識別値を取得します。

```cs title="AliceScript"
namespace Alice.Environment;
public string env_os_platform();
```

|戻り値| |
|-|-|
|`string`|現在のオペレーティングシステムの識別値。|

???note "対応: Alice2.0以降"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0|
    |AliceSister|2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.9、0.10|

### 注意
提供される戻り値は、次の表のいずれかです。

|戻り値|説明|
|---|---|
|MacOSX|オペレーティング システムは Macintosh です。この値はSilverlight上の`AliceSister`でのみ返されます。それ以外の環境では`Unix`と返されます。|
|Other|その他のオペレーティングシステムです。これにはWebAseemblyが含まれています。|
|Unix|オペレーティングシステムはUnixです。|
|Win32NT|オペレーティングシステムはWindowsNT以降です。|
|Win32Windows|オペレーティング システムは Windows 95 または Windows 98 です。 この値が返されることはありません。|
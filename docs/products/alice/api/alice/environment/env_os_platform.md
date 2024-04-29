---
title: env_os_platform
summary: 現在のオペレーティングシステムの識別値を取得します。
---
### 定義
名前空間:Alice.Environment / アセンブリ : Losetta.Runtime.dll / サポート: Alice2.0

属性: 関数

#### env_os_platform()

現在のオペレーティングシステムの識別値を取得します。

```cs title="AliceScript"
namespace Alice.Environment;
public string env_os_platform();
```

|戻り値| |
|-|-|
|`string`|現在のオペレーティングシステムの識別値。|

### 注意
提供される戻り値は、次の表のいずれかです。

|戻り値|説明|
|---|---|
|MacOSX|オペレーティング システムは Macintosh です。この値はSilverlight上の`AliceSister`でのみ返されます。それ以外の環境では`Unix`と返されます。|
|Other|その他のオペレーティングシステムです。これにはWebAseemblyが含まれています。|
|Unix|オペレーティングシステムはUnixです。|
|Win32NT|オペレーティングシステムはWindowsNT以降です。|
|Win32Windows|オペレーティング システムは Windows 95 または Windows 98 です。 この値が返されることはありません。|
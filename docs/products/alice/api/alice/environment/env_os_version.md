---
title: env_os_version
summary: 現在のオペレーティングシステムのプラットフォームID、バージョン、およびServicePackが連結された文字列形式を取得します。
---
### 定義
名前空間:Alice.Environment / アセンブリ : Losetta.Runtime.dll / サポート: Alice2.0

属性: 関数

#### env_os_version()

現在のオペレーティングシステムのプラットフォームID、バージョン、およびServicePackが連結された文字列形式を取得します。

```cs title="AliceScript"
namespace Alice.Environment;
public string env_os_version();
```

|戻り値| |
|-|-|
|`string`|現在のオペレーティングシステムのプラットフォームID、バージョン、およびServicePackが連結された文字列。|
---
title: env_os_version
summary: 現在のオペレーティングシステムのプラットフォームID、バージョン、およびServicePackが連結された文字列形式を取得します。
---
### 定義
名前空間:Alice.Environment<br/>
アセンブリ : Losetta.Runtime.dll<br/>
実装 : [Alice.Environment.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Environment.cs)

#### env_os_version()

現在のオペレーティングシステムのプラットフォームID、バージョン、およびServicePackが連結された文字列形式を取得します。

```cs title="AliceScript"
namespace Alice.Environment;
public string env_os_version();
```

|戻り値| |
|-|-|
|`string`|現在のオペレーティングシステムのプラットフォームID、バージョン、およびServicePackが連結された文字列。|

???note "対応: Alice2.0以降"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0|
    |AliceSister|2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.9、0.10|

---
title: env_impl_version
summary: SAIMの実装のバージョンを表す文字列を取得します。
date : 2023-08-09
---
### 定義
名前空間: Alice.Environment<br/>
アセンブリ: Losetta.Runtime.dll<br/>
実装: [Alice.Environment.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Environment.cs)

#### env_impl_version()

[SAIM](../../../general/saim.md)の実装のバージョンを表す文字列を取得します。

```cs title="AliceScript"
namespace Alice.Environment;
public string env_impl_version();
```

|戻り値| |
|-|-|
|`string`|[SAIM](../../../general/saim.md)の実装が報告したバージョンを表す文字列。|

???note "対応: Alice2.0以降"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0|
    |AliceSister|2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.9、0.10|

### 例
次の例では、[SAIM](../../../general/saim.md)のバージョンを表示します。

```cs title="AliceScript"
using Alice.Environment;

print(env_impl_version());
```
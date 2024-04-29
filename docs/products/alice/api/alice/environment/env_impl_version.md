---
title: env_impl_version
summary: SAIMの実装のバージョンを表す文字列を取得します。
date : 2023-08-09
---
### 定義
名前空間:Alice.Environment / アセンブリ : Losetta.Runtime.dll / サポート: Alice2.0

属性: 関数

#### env_impl_version()

[SAIM](../../../general/saim.md)の実装のバージョンを表す文字列を取得します。

```cs title="AliceScript"
namespace Alice.Environment;
public string env_impl_version();
```

|戻り値| |
|-|-|
|`string`|[SAIM](../../../general/saim.md)の実装が報告したバージョンを表す文字列。|

### 例
次の例では、[SAIM](../../../general/saim.md)のバージョンを表示します。

```cs title="AliceScript"
using Alice.Environment;

print(env_impl_version());
```
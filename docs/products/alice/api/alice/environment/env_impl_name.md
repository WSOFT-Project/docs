---
title: env_impl_name
summary: SAIMの実装の名前を取得します。
date : 2023-08-09
---
### 定義
名前空間:Alice.Environment / アセンブリ : Losetta.Runtime.dll / サポート: Alice2.0

属性: 関数

#### env_impl_name()

[SAIM](../../../general/saim.md)の実装の名前を取得します。

```cs title="AliceScript"
namespace Alice.Environment;
public string env_impl_name();
```

|戻り値| |
|-|-|
|`string`|[SAIM](../../../general/saim.md)の実装が報告した名前。|

### 例
次の例では、[SAIM](../../../general/saim.md)の名前を表示します。

```cs title="AliceScript"
using Alice.Environment;

print(env_impl_name());
```
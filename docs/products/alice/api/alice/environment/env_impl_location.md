---
title: env_impl_location
summary: SAIMの実装があるファイルパスを取得します。
date : 2023-08-09
---
### 定義
名前空間:Alice.Environment / アセンブリ : Losetta.Runtime.dll / サポート: Alice2.0

属性: 関数

[SAIM](../../../general/saim.md)の実装があるファイルパスを取得します。

```cs title="AliceScript"
namespace Alice.Environment;
string env_impl_location();
```

|戻り値| |
|-|-|
|`string`|[SAIM](../../../general/saim.md)の実装があるファイルパス。|

### 説明
この関数は、SAIMの実装がAliceScriptまたはAliceSisterの場合、AliceScript.dllまたはAliceSister.dllへのパスを、Losettaの場合は実行ファイルが存在するディレクトリへのパスを返します。
### 例
次の例では、[SAIM](../../../general/saim.md)の実装があるファイルパスを表示します。

```cs title="AliceScript"
using Alice.Environment;

print(env_impl_location());
```
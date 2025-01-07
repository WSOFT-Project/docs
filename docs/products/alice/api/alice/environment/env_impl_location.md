---
title: env_impl_location
summary: SAIMの実装があるファイルパスを取得します。
date : 2023-08-09
mt_type: function
mt_title: env_impl_location()
---
### 定義
名前空間: Alice.Environment<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Environment.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Environment.cs)

#### env_impl_location()

[SAIM](../../../general/saim.md)の実装があるファイルパスを取得します。

```cs title="AliceScript"
namespace Alice.Environment;
public string env_impl_location();
```

|戻り値| |
|-|-|
|`string`|[SAIM](../../../general/saim.md)の実装があるファイルパス。|

???note "対応: Alice2.0以降"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.9、0.10、0.11|

### 説明
この関数によって返される値は、SAIMの実装によって異なります。

**AliceScriptおよびAliceSister**: この関数は、AliceScriptの実装アセンブリへの絶対パスを返します。戻り値は通常`.dll`で終わるパスとなります。

**Losetta**: この関数は、実行ファイルが存在するディレクトリへの絶対パスを返します。

この関数は、SAIMの実装がAliceScriptまたはAliceSisterの場合、AliceScript.dllまたはAliceSister.dllへのパスを、Losettaの場合は実行ファイルが存在するディレクトリへのパスを返します。

### 例
次の例では、[SAIM](../../../general/saim.md)の実装があるファイルパスを表示します。

```cs title="AliceScript"
using Alice.Environment;

print(env_impl_location());
```
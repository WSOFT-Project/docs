---
title: env_impl_name
summary: SAIMの実装の名前を取得します。
date : 2023-08-09
---
### 定義
名前空間: Alice.Environment<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Environment.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Environment.cs)

#### env_impl_name()

[SAIM](../../../general/saim.md)の実装の名前を取得します。

```cs title="AliceScript"
namespace Alice.Environment;
public string env_impl_name();
```

|戻り値| |
|-|-|
|`string`|[SAIM](../../../general/saim.md)の実装が報告した名前。|

???note "対応: Alice2.0以降"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0|
    |AliceSister|2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.9、0.10|

### 説明
この関数は、現在スクリプトを実行しているSAIMの実装の名前を返します。例えば、公式ビルドのLosetta上でスクリプトが動作している場合、この関数は`Losetta`を返します。

### 例
次の例では、[SAIM](../../../general/saim.md)の名前を表示します。

```cs title="AliceScript"
using Alice.Environment;

print(env_impl_name());
```
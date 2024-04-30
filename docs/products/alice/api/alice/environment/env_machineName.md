---
title: env_MachineName
summary: ローカル コンピューターの NetBIOS 名を取得します。
---
### 定義
名前空間:Alice.Environment<br/>
アセンブリ : Losetta.Runtime.dll<br/>
実装 : [Alice.Environment.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Environment.cs)

#### env_MachineName()

ローカル コンピューターの NetBIOS 名を取得します。

```cs title="AliceScript"
namespace Alice.Environment;
public string env_MachineName();
```

|戻り値| |
|-|-|
|`string`|コンピューターの名前。|

???note "対応: Alice2.0以降"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0|
    |AliceSister|2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.9、0.10|

### 注意
このコンピューターの名前は、レジストリから名前を読み取るときに、システムの起動時に確立されます。 このコンピューターがクラスター内のノードである場合は、ノードの名前が返されます。
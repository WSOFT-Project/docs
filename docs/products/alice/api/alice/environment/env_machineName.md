---
title: env_MachineName
summary: ローカル コンピューターの NetBIOS 名を取得します。
---
### 定義
名前空間:Alice.Environment / アセンブリ : Losetta.Runtime.dll / サポート: Alice2.0

属性: 関数

#### env_MachineName()

ローカル コンピューターの NetBIOS 名を取得します。

```cs title="AliceScript"
namespace Alice.Environment;
public string env_MachineName();
```

|戻り値| |
|-|-|
|`string`|コンピューターの名前。|

### 注意
このコンピューターの名前は、レジストリから名前を読み取るときに、システムの起動時に確立されます。 このコンピューターがクラスター内のノードである場合は、ノードの名前が返されます。
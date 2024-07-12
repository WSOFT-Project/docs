---
title: env_is64BitProcess
summary: 現在のプロセスが64ビットプロセスであるかどうかを示す値を取得します。
mt_type: function
mt_title: env_is64BitProcess()
---
### 定義
名前空間: Alice.Environment<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Environment.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Environment.cs)

#### env_is64BitProcess()

現在のプロセスが64ビットプロセスであるかどうかを示す値を取得します。

```cs title="AliceScript"
namespace Alice.Environment;
public bool env_is64BitProcess();
```

|戻り値| |
|-|-|
|`bool`|プロセスが64ビットの場合は`true`、それ以外の場合は`false`。|

???note "対応: Alice2.0以降"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0|
    |AliceSister|2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.9、0.10|

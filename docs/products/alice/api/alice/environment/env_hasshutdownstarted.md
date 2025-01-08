---
title: env_hasShutdownStarted
summary: 現在のアプリケーションドメインがアンロード中か、またはシステムがシャットダウン中かどうかを表す値を取得します。
mt_type: function
mt_title: env_hasShutdownStarted()
---
### 定義
名前空間: Alice.Environment<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Environment.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Environment.cs)

#### env_hasShutdownStarted()

現在のアプリケーションドメインがアンロード中か、またはシステムがシャットダウン中かどうかを表す値を取得します。

```cs title="AliceScript"
namespace Alice.Environment;
public bool env_hasShutdownStarted();
```

|戻り値| |
|-|-|
|`bool`|現在のアプリケーション ドメインがアンロードされているか、CLR がシャットダウンしている場合は`true`、それ以外の場合は`false`。|

???note "対応: Alice2.0以降"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.9、0.10、0.11|

---
title: env_hasShutdownStarted
summary: 現在のアプリケーションドメインがアンロード中か、またはシステムがシャットダウン中かどうかを表す値を取得します。
---
### 定義
名前空間:Alice.Environment / アセンブリ : Losetta.Runtime.dll / サポート: Alice2.0

属性: 関数

現在のアプリケーションドメインがアンロード中か、またはシステムがシャットダウン中かどうかを表す値を取得します。

```cs title="AliceScript"
namespace Alice.Environment;
bool env_hasShutdownStarted();
```

|戻り値| |
|-|-|
|`bool`|現在のアプリケーション ドメインがアンロードされているか、CLR がシャットダウンしている場合は`true`、それ以外の場合は`false`。|
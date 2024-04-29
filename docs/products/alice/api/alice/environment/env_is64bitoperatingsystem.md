---
title: env_Is64BitOperatingSystem
summary: 現在のオペレーティング システムが 64 ビットのオペレーティング システムであるかどうかを示す値を取得します。
---
### 定義
名前空間:Alice.Environment / アセンブリ : Losetta.Runtime.dll / サポート: Alice2.0

属性: 関数

#### env_Is64BitOperatingSystem()

現在のオペレーティング システムが 64 ビットのオペレーティング システムであるかどうかを示す値を取得します。

```cs title="AliceScript"
namespace Alice.Environment;
public bool env_Is64BitOperatingSystem();
```

|戻り値| |
|-|-|
|`bool`|オペレーティング システムが 64 ビットの場合は`true`、それ以外の場合は`false`。|
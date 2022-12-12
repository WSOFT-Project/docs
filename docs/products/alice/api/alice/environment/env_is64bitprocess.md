---
title: env_Is64BitProcess
summary: 現在のプロセスが 64 ビット プロセスであるかどうかを示す値を取得します。
---
### 定義
名前空間:Alice.Environment / アセンブリ : Losetta.Runtime.dll / サポート: Alice2.0

属性: 関数

現在のプロセスが 64 ビット プロセスであるかどうかを示す値を取得します。

```cs title="AliceScript"
namespace Alice.Environment;
bool env_Is64BitProcess();
```

|戻り値| |
|-|-|
|`bool`|プロセスが64 ビットの場合は`true`、それ以外の場合は`false`。|
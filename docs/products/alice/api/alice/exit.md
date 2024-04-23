---
title: exit
summary: 現在のプロセスを終了します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

現在のプロセスを終了します

```cs title="AliceScript"
namespace Alice;
public void exit();
```

終了コードを指定して、現在のプロセスを終了します

```cs title="AliceScript"
namespace Alice;
public void exit(number exitCode);
```

|引数| |
|-|-|
|`exitCode`|OSに通知する終了コード|

### 例
以下は、exit関数を使用してプログラムを終了します。

```cs title="AliceScript"
exit();
```

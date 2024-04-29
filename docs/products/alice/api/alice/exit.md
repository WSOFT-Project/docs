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

現在のプロセスを終了し、オペレーティングシステムに終了コードを通知します。

```cs title="AliceScript"
namespace Alice;
public void exit(number exitCode);
```

|引数| |
|-|-|
|`exitCode`|OSに通知する終了コード|

### 説明
処理が正常に完了したことを示すには、`exitCode`を0に指定します。
処理が正常に完了しなかった場合は、`exitCode`を0以外の値に設定してエラーを示します。

この関数は、他のスレッドが実行されている場合でも、アプリケーションを直ちに終了します。

### 例
以下は、exit関数を使用してプログラムを終了します。

```cs title="AliceScript"
exit();
```

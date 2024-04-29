---
title: gc_getTotalMemory
summary: 現在プロセスに割り当てられられていると思われるメモリのバイト数を取得します。
date : 2021-07-28
---
### 定義
名前空間:Alice.Interpreter / アセンブリ : Losetta.dll / サポート: AliceScript1

属性: 関数

#### gc_getTotalMemory(bool)

現在プロセスに割り当てられられていると思われるメモリのバイト数を取得します。

```cs title="AliceScript"
namespace Alice.Interpreter;
public number gc_getTotalMemory(bool forceFullCollection);
```

|引数| |
|-|-|
|`forceFullCollection`|ガページコレクションの発生を待機する場合は`true`、それ以外の場合は`false`。|

|戻り値| |
|-|-|
|`number`|現在プロセスに割り当てられられていると思われるメモリのバイト数|

### 例
次の例では、現在プロセスに割り当てられられていると思われるメモリのバイト数を取得します。

```cs title="AliceScript"
using Alice.Interpreter;

print(gc_getTotalMemory());
```
---
title: gc_getTotalMemory
summary: 現在プロセスに割り当てられられていると思われるメモリのバイト数を取得します。
date : 2021-07-28
---

### 定義
名前空間: Alice.Interpreter<br/>
アセンブリ: Losetta.dll<br/>
ソースコード: [Alice.Interpreter.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta/NameSpaces/Alice.Interpreter.cs)

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

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
次の例では、現在プロセスに割り当てられられていると思われるメモリのバイト数を取得します。

```cs title="AliceScript"
using Alice.Interpreter;

print(gc_getTotalMemory());
```
---
title: console_clear
summary: コンソールバッファーをクリアします。
date : 2024-06-05
mt_type: function
mt_overloads: 1
mt_title: console_clear()
mt_summary: コンソールバッファーをクリアします。
---

### 定義
名前空間: Alice.Console<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Console.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Console.cs)

#### console_clear()

コンソールバッファーをクリアします。

```cs title="AliceScript"
namespace Alice.Console;

@unSupportedPlatform("browser")
@unSupportedPlatform("android")
@unSupportedPlatform("ios")
@unSupportedPlatform("tvos")
public void console_clear();
```

???note "対応: AliceScript GM以降"
    |対応||
    |---|---|
    |AliceScript|GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 説明

この関数は、コンソール(またはそのエミュレーター)に対してコンソールをクリアするように依頼します。これは、MS-DOS環境で`cls`コマンドを、Unix環境で`clear`コマンドを呼び出すのと同じです。

コンソールの出力がファイルにリダイレクトされている状態でこの関数を呼び出すと、例外が発生します。これを回避するためには、[try-catch文](../try-catch.md)で囲みます。

### 例
次の例では、コンソールをクリアします。

```cs title="AliceScript"
using Alice.Console;

console_clear();
```
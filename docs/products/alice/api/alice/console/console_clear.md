---
title: console_clear
summary: コンソールバッファーをクリアします。
date : 2024-06-05
---

### 定義
名前空間: Alice.Console<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Console.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Console.cs)

#### console_clear()

コンソールバッファーをクリアします。

```cs title="AliceScript"
namespace Alice.Console;

@unsupportedFor("android")
@unsupportedFor("ios")
@unsupportedFor("tvos")
public void console_clear();
```

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 説明

この関数は、コンソール(またはそのエミュレーター)に対してコンソールをクリアするように依頼します。これは、MS-DOS環境で`cls`コマンドを、Unix環境で`clear`コマンドを呼び出すのと同じです。

### 例
次の例では、`main`ディレクトリを`test`ディレクトリにコピーしています。

```cs title="AliceScript"
using Alice.IO;

directory_copy("main","test");
```
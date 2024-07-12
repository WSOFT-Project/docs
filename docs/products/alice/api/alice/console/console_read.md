---
title: console_read
summary: 標準入力から一文字読み取ります。
date : 2024-06-12
mt_type: function
mt_overloads: 1
mt_title: console_read()
mt_summary: 標準入力から一文字読み取ります。
---

### 定義
名前空間: Alice.Console<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Console.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Console.cs)

#### console_read()

標準入力から一文字読み取ります。

```cs title="AliceScript"
namespace Alice.Console;

@unsupportedFor("browser")
@unsupportedFor("android")
public number console_read();
```

|戻り値| |
|-----|-|
|`number`|標準入力から読み取った文字を表す数値。ただし、次の文字がない場合は`-1`。|

???note "対応: AliceScript GM以降"
    |対応||
    |---|---|
    |AliceScript|GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 説明

この関数は、標準入力を一文字分読み取り、その文字の符号点を表す数値を返します。
この関数は、文字を読み取るまでスレッドをブロックします。この関数によって入力待ちの状態で、Windows環境で++enter++キーが押されると、`\r`のみ返されます。

この関数は、以下のいずれかの場合に`-1`を返します。

- ++ctrl+z++キーが押された場合
- ++f6++キーなど、コンソールがファイルの終了を通知するようなコマンドが入力された場合
- 標準入力がファイルにリダイレクトされていて、そのファイルを最後まで読み取り切った場合

### 例
次の例では、コンソールから一文字読み取ります。

```cs title="AliceScript"
using Alice.Console;

var key = console_read();

print($"あなたは　{key} を押しました。");
```
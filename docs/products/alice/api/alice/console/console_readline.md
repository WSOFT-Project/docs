---
title: console_readLine
summary: 標準入力から一行分の文字列を読み取ります。
date : 2024-06-12
mt_type: function
mt_overloads: 1
mt_title: console_readLine()
mt_summary: 標準入力から一行分の文字列を読み取ります。
---

### 定義
名前空間: Alice.Console<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Console.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Console.cs)

#### console_readLine()

標準入力から一行分の文字列を読み取ります。

```cs title="AliceScript"
namespace Alice.Console;

@unsupportedFor("browser")
@unsupportedFor("android")
public string? console_readLine();
```

|戻り値| |
|-----|-|
|`string?`|標準入力から読み取った一行分の文字列。ただし、次の行がない場合は`null`。|

???note "対応: AliceScript GM以降"
    |対応||
    |---|---|
    |AliceScript|GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 説明
この関数は、標準入力から一行分文字列を読み取ります。
行とは、任意個の任意の文字の後にキャリッジリターン`U+000d`、改行`U+000a`または、[env_newline](../alice/environment/env_newline.md)の値で終わる文字列です。この関数が返す文字列には、行の終端文字は含まれません。
この関数は、最大で256文字読み取ることができます。しかし、終端文字は含まれないため、実質254文字を読み取れます。

この関数は、同期的に実行されます。
処理は行が読み取られるか、++ctrl+z++ キー(Windowsでは何も入力せず ++return++ キー)が押下されるまで一時停止します。++ctrl+z++ キーが押された場合、この関数は`null`を返します。

標準入力がファイルにリダイレクトされた場合、この関数はリダイレクトされたファイルから一行分文字列を読み取ります。たとえば、`test.txt`というファイルが以下の内容であったとします。

```txt title="test.txt"
This is test.
```

このファイルに対して、次のようにコマンドを実行すると、例のような結果になります。

```sh title="コンソール"
> alice -e print(read()) < test.txt
This is test.
```

この関数の動作は、[console_readLine](./console/console_readline.md)関数と同じです。

### 例
次の例では、コンソールから一行分文字列を読み取り、そのまま出力します。

```cs title="AliceScript"
using Alice.Console;

string input = console_readLine();

print(input);
```
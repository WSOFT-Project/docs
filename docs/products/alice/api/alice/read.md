---
title: read
summary: 標準入力から一行分の文字列を読み取ります。
date : 2022-12-28
mt_type: function
mt_title: read()
mt_summary: 標準入力から一行分の文字列を読み取ります。
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Utils.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Alice.Core.Utils.cs)


#### read()

標準入力から一行分の文字列を読み取ります。

```cs title="AliceScript"
namespace Alice;
public string? read();
```

|戻り値| |
|---|---|
|`string?`|読み取った一行分の文字列。次の行がなかった場合は`null`。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

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
次の例は、標準入力から名前を取得してあいさつする例です。

```cs title="AliceScript"
print("こんにちは！あなたの名前を教えてください。");
var name=read();
print("{0}さん、こんにちは！これからよろしくね。",name);
```

また、[write](./write.md)関数と併用しプロンプトを表示することで、ユーザーが今何を入力すべきかを分かりやすくできます。

```cs title="AliceScript"
print("こんにちは！あなたの名前を教えてください。");
write("お名前>");
var name=read();
print("{0}さん、こんにちは！これからよろしくね。",name);
```
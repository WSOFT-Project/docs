---
title: read
summary: 標準入力から一行分の文字列を読み取ります。
date : 2022-12-28
---
### 定義
名前空間:Alice / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript2.1

属性: 関数

標準入力から一行分の文字列を読み取ります。

```cs title="AliceScript"
namespace Alice;
string? read();
```
|戻り値| |
|-|-|
|`string?`|読み取った一行分の文字列。次の行がなかった場合は`null`。|

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
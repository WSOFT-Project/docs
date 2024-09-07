---
title: console_readKey
summary: ユーザーが入力した次の文字を取得します。
date : 2024-06-12
mt_type: function
mt_overloads: 1
mt_title: console_readKey()
mt_summary: ユーザーが入力した次の文字を取得します。
---

### 定義
名前空間: Alice.Console<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Console.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Console.cs)

#### console_readKey()

ユーザーが入力した次の文字を取得します。

```cs title="AliceScript"
namespace Alice.Console;

@unSupportedPlatform("browser")
@unSupportedPlatform("android")
@unSupportedPlatform("ios")
@unSupportedPlatform("tvos")
public string console_readKey();
```

|戻り値| |
|-----|-|
|`string`|ユーザーが入力した文字に対応する文字|

???note "対応: AliceScript GM以降"
    |対応||
    |---|---|
    |AliceScript|GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

#### console_readKey(bool)

ユーザーが入力した次の文字を取得します。

```cs title="AliceScript"
namespace Alice.Console;

@unSupportedPlatform("browser")
@unSupportedPlatform("android")
@unSupportedPlatform("ios")
@unSupportedPlatform("tvos")
public string console_readKey(bool intercept);
```

|引数| |
|---|-|
|`intercept`|ユーザーが押したキーをコンソールに表示**しない**場合は`true`、表示する場合は`false`。|

|戻り値| |
|-----|-|
|`string`|ユーザーが入力した文字に対応する文字|

???note "対応: Alice 3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 説明

この関数は、標準入力を一文字分読み取り、その文字に対応するUnicode文字を返します。
この時、ユーザーの入力がUnicode文字では表せない場合、代わりにヌル文字(`\0`)を返します。

`intercept`が`true`に指定されている場合、押されたキーはコンソールには表示されません。

### 例
次の例では、押されたキーを表示しています。

```cs title="AliceScript"
using Alice.Console;

var key = console_readKey();

print($"あなたは　{key} を押しました。");
```
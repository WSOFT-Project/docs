---
title: Replace
summary: 現在の文字列内に出現する特定の文字列をすべて指定した文字列に置き換えます
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

 現在の文字列内に出現する特定の文字列をすべて指定した文字列に置き換えます

```cs title="AliceScript"
namespace Alice;
string Replace(string oldValue,string newValue);
```

|引数| |
|-|-|
|`oldValue`|置換する場所の文字列|
|`newValue`|置換後の文字列|

|戻り値| |
|-|-|
|`string`|実行後の文字列|
### 例
以下は、Hello,Worldという文字列の"Hello"の部分を"Ora"に置換します。

```cs title="AliceScript"
var a = "Hello,World";
print(a.Replace("Hello","Ora")); // 出力例 : Ora,World
```

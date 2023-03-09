---
title: SubString
summary: 現在の文字列から指定した範囲の文字列を取得します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の文字列から指定した範囲の文字列を取得します

```cs title="AliceScript"
namespace Alice;
string SubString(number start);
```

|引数| |
|-|-|
|`start`|取得する文字列の開始位置|

|戻り値| |
|-|-|
|`string`|指定した範囲の文字列|

現在の文字列から指定した範囲の文字列を取得します

```cs title="AliceScript"
namespace Alice;
string SubString(number start,number length);
```

|引数| |
|-|-|
|`start`|取得する文字列の開始位置|
|`length`|取得する文字列の長さ|

|戻り値| |
|-|-|
|`string`|指定した範囲の文字列|
### 例
以下は、Hello,Worldという文字列の6文字目以降を取得します。

```cs title="AliceScript"
var a = "Hello,World";
print(a.SubString(6));
```

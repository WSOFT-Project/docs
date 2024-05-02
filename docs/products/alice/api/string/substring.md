---
title: SubString
long_title: string.SubString
summary: 現在の文字列から指定した範囲の文字列を取得します
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)
s
#### SubString(number)

現在の文字列から指定した範囲の文字列を取得します

```cs title="AliceScript"
namespace Alice;
public string SubString(number start);
```

|引数| |
|-|-|
|`start`|取得する文字列の開始位置|

|戻り値| |
|-|-|
|`string`|指定した範囲の文字列|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

#### SubString(number,number)

現在の文字列から指定した範囲の文字列を取得します

```cs title="AliceScript"
namespace Alice;
public string SubString(number start,number length);
```

|引数| |
|-|-|
|`start`|取得する文字列の開始位置|
|`length`|取得する文字列の長さ|

|戻り値| |
|-|-|
|`string`|指定した範囲の文字列|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
以下は、Hello,Worldという文字列の6文字目以降を取得します。

```cs title="AliceScript"
var a = "Hello,World";
print(a.SubString(6));
```

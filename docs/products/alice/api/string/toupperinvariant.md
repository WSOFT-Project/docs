---
title: ToUpperInvariant
long_title: string.ToUpperInvariant
summary: インバリアント カルチャの大文字と小文字の規則を使用して、現在の文字列内の文字をすべて大文字に置換します
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

#### ToUpperInvariant()

インバリアント カルチャの大文字と小文字の規則を使用して、現在の文字列内の文字をすべて大文字に置換します

```cs title="AliceScript"
namespace Alice;
public string ToUpperInvariant();
```

|戻り値| |
|-|-|
|`string`|実行後の文字列|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|
s
### 例
以下は、Hello,Worldをすべて小文字にします。

```cs title="AliceScript"
var a = "Hello,World";
print(a.ToLower()); 
```

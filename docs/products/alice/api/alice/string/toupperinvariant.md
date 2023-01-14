---
title: ToUpperInvariant
summary: インバリアント カルチャの大文字と小文字の規則を使用して、現在の文字列内の文字をすべて大文字に置換します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

インバリアント カルチャの大文字と小文字の規則を使用して、現在の文字列内の文字をすべて大文字に置換します

```cs title="AliceScript"
namespace Alice;
string ToUpperInvariant();
```

|戻り値| |
|-|-|
|`string`|実行後の文字列|

### 例
以下は、Hello,Worldをすべて小文字にします。

```cs title="AliceScript"
var a = "Hello,World";
print(a.ToLower()); 
```

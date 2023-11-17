---
title: ToLower
summary: 現在の文字列内の文字をすべて小文字に置換します
date : 2021-12-09
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の文字列内の文字をすべて小文字に置換します

```cs title="AliceScript"
namespace Alice;
string ToLower();
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

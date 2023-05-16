---
title: ToUpper
summary: 現在の文字列内の文字をすべて大文字に置換します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の文字列内の文字をすべて大文字に置換します

```cs title="AliceScript"
namespace Alice;
string ToUpper();
```

|戻り値| |
|-|-|
|`string`|実行後の文字列|

### 例
以下は、Hello,Worldをすべて大文字にします。

```cs title="AliceScript"
var a = "Hello,World";
print(a.ToUpper()); 
```

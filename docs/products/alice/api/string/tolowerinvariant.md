---
title: ToLowerInvariant
long_title: string.ToLowerInvariant
summary: 地域に依存しない規則を使用して、現在の文字列内の文字をすべて小文字に置換します。
mt_type: method
mt_title: ToLowerInvariant()
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

#### ToLowerInvariant()

地域に依存しない規則を使用して、現在の文字列内の文字をすべて小文字に置換します。

```cs title="AliceScript"
namespace Alice;
public string ToLowerInvariant();
```

|戻り値| |
|-|-|
|`string`|実行後の文字列|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 例
以下は、Hello,Worldをすべて小文字にします。

```cs title="AliceScript"
var a = "Hello,World";
print(a.ToLower()); 
```

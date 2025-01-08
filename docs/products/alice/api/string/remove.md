---
title: Remove
long_title: string.Remove
summary: 現在の文字列から指定された値を削除した文字列を取得します。
mt_type: method
mt_title: Remove(params string)
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)
s

#### Remove(params string)

現在の文字列から指定された値を削除した文字列を取得します

```cs title="AliceScript"
namespace Alice;
public string Remove(params string item);
```

|引数| |
|-|-|
|`item`|配列から削除する文字列。この引数は複数個指定できます。|

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
以下は、"Hello,World"からカンマを削除します。

```cs title="AliceScript"
var a = "Hello,World";
print(a.Remove(",")); // 出力例 : HelloWorld
```

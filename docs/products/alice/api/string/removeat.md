---
title: RemoveAt
long_title: string.RemoveAt
summary: 現在の文字列の指定したインデックスにある値を削除した文字列を取得します
mt_type: method
mt_title: RemoveAt(number)
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

#### RemoveAt(number)

現在の文字列の指定したインデックスにある値を削除した文字列を取得します

```cs title="AliceScript"
namespace Alice;
public string RemoveAt(number index);
```

|引数| |
|-|-|
|`index`|配列から削除する要素のインデックス|

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
以下は、Hello,Worldから1文字目の文字を削除します。

```cs title="AliceScript"
var a = "Hello,World";
print(a.RemoveAt(2)); // 出力例 : ello,World
```

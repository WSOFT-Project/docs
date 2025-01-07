---
title: Insert
long_title : string.Insert
summary: 現在の文字列内の指定したインデックスにその値を挿入した文字列を取得します
mt_type: method
mt_title: Insert(number,string)
mt_summary: 現在の文字列内の指定したインデックスにその値を挿入した文字列を取得します。
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

#### Insert(number,string)

現在の文字列内の指定したインデックスにその値を挿入した文字列を取得します。

```cs title="AliceScript"
namespace Alice;
public string Insert(number index, string item);
```

|引数| |
|-|-|
|`index`|挿入する配列内の場所を表すインデックス|
|`item`|挿入する変数|

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
以下は、Insertメソッドを使って文字列の先頭に"Hello"を追加しています。

```cs title="AliceScript"
var a = "World";
print(a.Insert(0,"Hello")); // 出力例 : HelloWorld
```

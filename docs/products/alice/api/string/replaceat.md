---
title: ReplaceAt
long_title: string.ReplaceAt
summary: 現在の文字列の指定した場所を、指定した文字列で置き換えた新しい文字列を取得します。
date : 2024-10-23
mt_type: method
mt_title: ReplaceAt(number, string)
mt_summary: 現在の文字列の指定した場所を、指定した文字列で置き換えた新しい文字列を取得します。
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

#### ReplaceAt(number, string)

> [!IMPORTANT] プレビュー
> この記事では、現在開発中のAlice vNEXTに実装される予定のAPIについて説明しています。
> このAPIは予告なく削除および変更される可能性があります。

現在の文字列の指定した場所を、指定した文字列で置き換えた新しい文字列を取得します。

```cs title="AliceScript"
namespace Alice;
public string ReplaceAt(number index, string replacement)
```

|引数| |
|-|-|
|`index`|現在の文字列内で置換を開始する場所|
|`replacement`|置換先の文字列|

|戻り値| |
|-|-|
|`string`|置換された文字列。|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

### 説明
このメソッドは、現在の文字列の指定した場所を、指定した文字列で置き換えた新しい文字列を取得します。

文字列は、`index`で指定した場所から`replacement`の長さの範囲で置換されます。文字列の長さが足りない場合は、必要なだけ拡張します。

このメソッドは、文字列を上書きします。指定した場所に文字列を上書きせず挿入するには[string.Insert](./insert.md)メソッドを使用してください。

### 例
次の例では、5文字目(`index=4`)から後を"Ken"に置換しています。

```cs title="AliceScript"

string str = "I'm Jon.";

string newStr = str.ReplaceAt(4, "Ken");
print(newStr);
// 出力例: I'm Ken.

Diagnostics.assert(newStr == "I'm Ken.");
```

---
title: Repeat
long_title: array.Repeat
summary: 現在の配列を指定回数繰り返した新しい配列を取得します
mt_type: method
mt_title: Repeat(number)
date : 2024-05-26
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### Repeat(number)

> [!IMPORTANT] プレビュー
> この記事では、現在開発中のAlice vNEXTに実装される予定のAPIについて説明しています。
> このAPIは予告なく削除および変更される可能性があります。

現在の配列を指定回数繰り返した新しい配列を取得します

```cs title="AliceScript"
namespace Alice;
public array Repeat(number repeatCount);
```

|引数| |
|-|-|
|`repeatCount`|配列を繰り返す回数|

|戻り値| |
|-|-|
|`array`|現在の配列を指定回数繰り返した文字列|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

### 例
以下は、`[1,2,3]`を3回繰り返した配列を取得しています。

```cs title="AliceScript"
var ary = [1,2,3];
print(ary.Repeat(3));
```

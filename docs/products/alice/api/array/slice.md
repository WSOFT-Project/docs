---
title: Slice
long_title : array.Slice
summary: 現在の配列内の、ある範囲の要素の簡易コピーを作成します。
mt_type: method
mt_title: Slice(number)
mt_summary: 現在の配列内の、指定された場所以降の要素の簡易コピーを作成します。
mt_title: Slice(Range)
mt_summary: 現在の配列内の、Rangeオブジェクトで指定された範囲の要素の簡易コピーを作成します。
mt_title: Slice(number,number)
mt_summary: 現在の配列内の、指定された範囲の要素の簡易コピーを作成します。
draft: true
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

> [!IMPORTANT] プレビュー
> この記事では、現在開発中のAlice vNEXTに実装される予定のAPIについて説明しています。
> このAPIは予告なく削除および変更される可能性があります。

#### Slice(number)

現在の配列内の、指定された場所以降の要素の簡易コピーを作成します。


```cs title="AliceScript"
class Alice.Array;
public array Slice(number start);
```

|引数| |
|-|-|
|`start`|要素の簡易コピーの作成を開始する位置。詳しくは**説明**を参照してください。|

|戻り値| |
|-|-|
|`array`|現在の配列の、指定された範囲の要素の簡易をコピーを格納する新しい配列|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

#### Slice(Range)

現在の配列内の、Rangeオブジェクトで指定された範囲の要素の簡易コピーを作成します。

```cs title="AliceScript"
class Alice.Array;
public array Slice(Range range);
```

|引数| |
|-|-|
|`range`|要素の簡易コピーの作成を行う範囲。詳しくは**説明**を参照してください。|

|戻り値| |
|-|-|
|`array`|現在の配列の、指定された範囲の要素の簡易をコピーを格納する新しい配列|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

#### Slice(number,number)

現在の配列内の、指定された範囲の要素の簡易コピーを作成します。

```cs title="AliceScript"
class Alice.Array;
public array Slice(number start, number end);
```

|引数| |
|-|-|
|`start`|要素の簡易コピーの作成を開始する位置。詳しくは**説明**を参照してください。|
|`end`|要素の簡易コピーの作成を終了する位置。詳しくは**説明**を参照してください。|

|戻り値| |
|-|-|
|`array`|現在の配列の、指定された範囲の要素の簡易をコピーを格納する新しい配列|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

### 例
次の例では、配列の一部をコピーして表示しています。

```cs title="AliceScript"
var ary = [1, 2, 3, 4, 5];

// 2番目(インデックス=1)から3つ目の手前までを取得する
print(ary.Slice(1, 3)); //出力: [2,3]
```

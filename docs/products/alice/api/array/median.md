---
title: Median
long_title : array.Median
summary: 現在の配列内の要素の中央値を取得します。
date: 2024-07-18
draft: true
mt_type: method
mt_title: Median()
mt_summary: 現在の配列内の各要素の中央値を取得します。
mt_title: Median(delegate)
mt_summary: 現在の配列内の各要素にある値を用いて、中央値を取得します。
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

> [!IMPORTANT] プレビュー
> この記事では、現在開発中のAlice vNEXTに実装される予定のAPIについて説明しています。
> このAPIは予告なく削除および変更される可能性があります。

#### Median()

現在の配列内の各要素の中央値を取得します。

```cs title="AliceScript"
class Alice.Array;
public number Median();
```

|戻り値| |
|-|-|
|`number`|配列内の各要素の中央値|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

#### Median(delegate)

現在の配列内の各要素にある値を用いて、中央値を取得します。

```cs title="AliceScript"
class Alice.Array;
public number Median(delegate source);
```

|引数| |
|-|-|
|`source`|配列内の各要素を数値に変換する関数|

|戻り値| |
|-|-|
|`number`|配列内の各要素の中央値|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

### 説明
この関数は、現在の配列の各要素の中央値を取得します。`source`を指定しない場合、配列内の各要素は数値型である必要があります。

`source`は、数値型を返すデリゲートである必要があります。このデリゲートには、順番に配列内の各要素が渡されます。

### 例
以下は、ある数値が入った配列の中央値を求めます。

```cs title="AliceScript"
var a = [1,2,3,4];
print(a.Median()); // 出力例 : 2.5
```

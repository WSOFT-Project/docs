---
title: Mode
long_title : array.Mode
summary: 現在の配列内の要素の最頻値を取得します。
date: 2024-07-18
draft: true
mt_type: method
mt_title: Mode()
mt_summary: 現在の配列内の各要素の最貧値を取得します。
mt_title: Mode(delegate)
mt_summary: 現在の配列内の各要素にある値を用いて、最頻値値を取得します。
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

> [!IMPORTANT] プレビュー
> この記事では、現在開発中のAlice vNEXTに実装される予定のAPIについて説明しています。
> このAPIは予告なく削除および変更される可能性があります。

#### Mode()

現在の配列内の各要素の最頻値を取得します。

```cs title="AliceScript"
class Alice.Array;
public number Mode();
```

|戻り値| |
|-|-|
|`number`|配列内の各要素の最頻値|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

#### Mode(delegate)

現在の配列内の各要素にある値を用いて、最頻値を取得します。

```cs title="AliceScript"
class Alice.Array;
public number Mode(delegate source);
```

|引数| |
|-|-|
|`source`|配列内の各要素を数値に変換する関数|

|戻り値| |
|-|-|
|`number`|配列内の各要素の最頻値|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

### 説明
この関数は、現在の配列の各要素の最頻値を取得します。`source`を指定しない場合、配列内の各要素は数値型である必要があります。

`source`は、数値型を返すデリゲートである必要があります。このデリゲートには、順番に配列内の各要素が渡されます。

### 例
以下は、ある数値が入った配列の最頻値を求めます。

```cs title="AliceScript"
var a = [1, 2, 3, 3, 4];
print(a.Mode()); // 出力例 : 3
```

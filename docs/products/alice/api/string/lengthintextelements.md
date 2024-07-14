---
title: LengthInTextElements
long_title : string.LengthInTextElements
summary: 現在の文字列の文字要素の数を取得します
mt_type: property
---

> [!IMPORTANT] プレビュー
> この記事では、現在開発中のAlice vNEXTに実装される予定のAPIについて説明しています。
> このAPIは予告なく削除および変更される可能性があります。

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

現在の文字列の文字要素の数を取得します

```cs title="AliceScript"
class Alice.String;
public readonly number LengthInTextElements;
```

### 値
|値| |
|-|-|
|`number`|現在の文字列の文字要素の数|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

### 説明
このプロパティは、サロゲートペアや結合文字を一文字と数えて文字数を取得します。文字要素とは、およそ人に見える一文字のことです。サロゲートペアをもつ文字は、上位サロゲートと下位サロゲートを合わせて一文字と認識します。

C言語やC++などの一部の言語では、null文字は文字列の末尾を表します。AliceScriptでは、null文字を文字列に使用しても、末尾という意味にはなりません。文字列にひとつ以上のnull文字が含まれている場合、その文字も文字数に含みます。

### 例
以下は、👨‍👨‍👧‍👦という絵文字の長さと文字要素の数を表示しています。

```cs title="AliceScript"
var str = "👨‍👨‍👧‍👦";
print(str.length);//出力: 11
print(str.LengthInTextElements);//出力: 1
```

---
title: ToTitleCase
long_title: string.ToTitleCase
summary: 現在の文字列をタイトルケースと同じ大文字小文字の組み合わせに置換します。
date : 2024-05-12
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

> [!IMPORTANT] プレビュー
> この記事では、現在開発中のAlice vNEXTに実装される予定のAPIについて説明しています。
> このAPIは予告なく削除および変更される可能性があります。

#### ToTitleCase()

現在の文字列をタイトルケースと同じ大文字小文字の組み合わせに置換します。

```cs title="AliceScript"
namespace Alice;
public string ToTitleCase();
```

|戻り値| |
|-|-|
|`string`|置換後の文字列|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

#### ToTitleCase(string?)

指定されたカルチャの規則を使用して、現在の文字列をタイトルケースと同じ大文字小文字の組み合わせに置換します。

```cs title="AliceScript"
namespace Alice;
public string ToTitleCase(string? cultureName);
```

|引数| |
|-|-|
|`cultureName`|使用するカルチャの名前。`null`を指定するとカルチャを考慮しません。|

|戻り値| |
|-|-|
|`string`|置換後の文字列|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

### 説明
このメソッドは、現在の文字列をタイトルケースに置換します。
この置換では、頭字語とみなせるすべてが大文字で構成された単語を除いて、単語の先頭の文字を大文字に、以降の文字を小文字に置換します。

このメソッドは、必ずしも言語的に正しいとは限らない結果を返します。たとえば、英語のandやtoなども大文字に置換します。
次の例をご覧ください。

元の文字列|言語|正しい結果|実際の結果
---|---|---|---
war and peace|英語|War and Peace|War And Peace
Per anhalter durch die Galaxis|ドイツ語|Per Anhalter durch die Galaxis|Per Anhalter Durch Die Galaxis
les naufragés d'ythaq|フランス語|Les Naufragés d'Ythaq|Les Naufragés D'ythaq|

`cultureName`に`null`を指定したときの動作は、[string.ToTitleCaseInvariant()](./totitlecaseinvariant.md)と同じです。
一般に、カルチャを考慮しないでよいケースではカルチャを指定せず関数を実行した方が安全です。

`cultureName`には、スクリプトを実行しているコンピューターでサポートされているロケールを使用してください。Windowsで使用できるロケール名については、[5 Appendix A: Product Behavior](https://learn.microsoft.com/ja-jp/openspecs/windows_protocols/ms-lcid/a9eac961-e77d-41a6-90a5-ce1a8b0cdb9c)を参照してください。

### 例
以下は、alice scriptをタイトルケースに変換して表示しています。

```cs title="AliceScript"
var a = "alice script";
print(a.ToTitleCase());
//出力: Alice Script
```

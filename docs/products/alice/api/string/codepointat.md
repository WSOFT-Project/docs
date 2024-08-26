---
title: CodePointAt
long_title: string.CodePointAt
summary: 現在の文字列の指定した場所にある文字のコードポイントを取得します。
date : 2024-08-03
mt_type: method
mt_title: CodePointAt(number)
mt_summary: 現在の文字列の指定した場所にある文字のUTF-16コードポイントを取得します。
mt_title: CodePointAt(number,bool)
mt_summary: 現在の文字列の指定した場所にある文字のコードポイントを取得します。
draft: true
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

> [!IMPORTANT] プレビュー
> この記事では、現在開発中のAlice vNEXTに実装される予定のAPIについて説明しています。
> このAPIは予告なく削除および変更される可能性があります。

#### CodePointAt(number)

現在の文字列の指定した場所にある文字のUTF-16コードポイントを取得します。

```cs title="AliceScript"
class Alice.String;
number CodePointAt(number index);
```

|引数| |
|-|-|
|`index`|取得したい文字の文字列内での場所|

|戻り値| |
|-|-|
|`number`|指定した場所にある文字のUTF-16コードポイント|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

#### CodePointAt(number,bool)

現在の文字列の指定した場所にある文字のコードポイントを取得します。

```cs title="AliceScript"
class Alice.String;
number CodePointAt(number index, bool utf32);
```

|引数| |
|-|-|
|`index`|取得したい文字の文字列内での場所|
|`utf32`|コードポイントをUTF-32形式で取得する場合は`true`、UTF-16形式で取得する場合は`false`|

|戻り値| |
|-|-|
|`number`|指定した場所にある文字のUTF-16コードポイント|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

### 説明
現在の文字列の指定した場所にある文字のコードポイントを取得します。

`utf32`を`true`にし、文字列の指定した位置にサロゲートペアが含まれている場合は、2文字分読み取り、UTF32コードポイントを返します。

### 例
次の例では、文字列の先頭の文字のコードポイントを表示しています。

```cs title="AliceScript"
string str = "ABC";

print(str.CodePointAt(0));
```